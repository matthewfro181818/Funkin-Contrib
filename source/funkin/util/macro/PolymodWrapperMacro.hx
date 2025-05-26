package funkin.util.macro;

import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import haxe.rtti.Meta;

using haxe.macro.TypeTools;
using haxe.macro.ExprTools;

class PolymodWrapperMacro
{
  #if macro
  static var BLACKLIST_MAP:Map<String, Array<String>> = ["flixel.util.FlxSave" => ["resolveFlixelClasses"]];

  static var calledBefore:Bool = false;
  #end

  private static var _allWrappers:Map<String, String> = null;

  public static function getAllWrappers():Map<String, String>
  {
    if (_allWrappers == null) _allWrappers = PolymodWrapperMacro.fetchAllWrappers();
    return _allWrappers;
  }

  public static macro function createClassWrappers():Void
  {
    Context.onAfterTyping(function(types:Array<ModuleType>) {
      if (calledBefore) return;

      var allWrappers:Array<Expr> = [];

      for (type in types)
      {
        switch (type)
        {
          case TClassDecl(c):
            var classType:ClassType = c.get();
            var classPath:String = c.toString();
            if (classType.isInterface) continue;
            if (!BLACKLIST_MAP.exists(classPath)) continue;

            var classBlacklists:Array<String> = BLACKLIST_MAP.get(classPath);
            if (classBlacklists.length == 0) continue;

            // Create a wapper class.
            var fullWrapperName:String = "funkin.modding.wrappers." + classPath;
            var wrapperPack:Array<String> = fullWrapperName.split(".");
            var wrapperName:String = wrapperPack.pop();

            var fields:Array<Field> = [];
            for (statField in classType.statics.get())
            {
              if (!classBlacklists.contains(statField.name)) fields.push(classFieldToField(statField, true));
            }

            for (classField in classType.fields.get())
            {
              if (!classBlacklists.contains(classField.name)) fields.push(classFieldToField(classField));
            }

            Context.info(Std.string(fields), Context.currentPos());

            Context.defineModule("funkin.util.macro.PolymodWrapperMacro", [
              {
                pack: wrapperPack,
                name: wrapperName,
                kind: TypeDefKind.TDClass(null, [], false, false, false),
                fields: fields,
                pos: Context.currentPos()
              }
            ]);

            var entryData:Array<Expr> = [macro $v{classPath}, macro $v{fullWrapperName}];
            allWrappers.push(macro $a{entryData});

          default:
            continue;
        }
      }

      var wrapperMacroType:Type = Context.getType('funkin.util.macro.PolymodWrapperMacro');

      switch (wrapperMacroType)
      {
        case TInst(t, _):
          var wrapperMacroClassType:ClassType = t.get();
          wrapperMacroClassType.meta.add('wrapperClasses', allWrappers, Context.currentPos());
        default:
          throw 'Could not find PolymodWrapperMacro type';
      }

      calledBefore = true;
    });
  }

  #if macro
  public static function classFieldToField(cf:ClassField, isStatic:Bool = false)
  {
    Context.info(cf.name, Context.currentPos());
    Context.info(Std.string(cf.type), Context.currentPos());

    var typedExpr:Null<TypedExpr> = cf.expr();
    if (typedExpr == null) return null;

    var realExpr:Expr = Context.getTypedExpr(typedExpr);

    switch (cf.type)
    {
      case TFun(args, ret):
        var fieldArgs:Array<FunctionArg> = [];
        for (arg in args)
        {
          fieldArgs.push(
            {
              name: arg.name,
              type: null,
              opt: arg.opt,
            });
        }

        var field:Field =
          {
            name: cf.name,
            doc: cf.doc,
            access: [Access.APublic].concat(isStatic ? [Access.AStatic] : []),
            pos: Context.currentPos(),
            kind: FFun(
              {
                args: fieldArgs,
                expr: realExpr,
                params: []
              })
          }

        return field;

      case TInst(t, params):
        var field:Field =
          {
            name: cf.name,
            doc: cf.doc,
            access: [Access.APublic].concat(isStatic ? [Access.AStatic] : []),
            pos: Context.currentPos(),
            kind: FVar(cf.type.toComplexType(), realExpr)
          }
        return field;

      case TDynamic(t):
        var field:Field =
          {
            name: cf.name,
            doc: cf.doc,
            access: [Access.APublic].concat(isStatic ? [Access.AStatic] : []),
            pos: Context.currentPos(),
            kind: FVar(t.toComplexType(), realExpr)
          }
        return field;

      default:
    }

    return null;
  }
  #end

  public static function fetchAllWrappers():Map<String, String>
  {
    var metaData = Meta.getType(PolymodWrapperMacro);

    if (metaData.wrapperClasses != null)
    {
      var result:Map<String, String> = [];

      for (element in metaData.wrapperClasses)
      {
        if (element.length != 2) throw 'Malformed element in wrappers: ' + element;

        var classPath:String = element[0];
        var classWrapper:String = element[1];

        result.set(classPath, classWrapper);
      }

      return result;
    }
    else
    {
      throw 'No wrapper classes found in PolymodWrapperMacro';
    }
  }
}
