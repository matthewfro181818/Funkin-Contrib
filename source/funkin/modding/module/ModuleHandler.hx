package funkin.modding.module;

import funkin.util.SortUtil;
import funkin.modding.events.ScriptEvent.UpdateScriptEvent;
import funkin.modding.events.ScriptEvent;
import funkin.modding.events.ScriptEventDispatcher;
import funkin.modding.module.Module;
import funkin.modding.module.ScriptedModule;
<<<<<<< HEAD
<<<<<<< HEAD
import flixel.FlxG;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
import flixel.FlxG;
>>>>>>> b150c43d (lol4)

/**
 * Utility functions for loading and manipulating active modules.
 */
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class ModuleHandler
{
  static final moduleCache:Map<String, Module> = new Map<String, Module>();
  static var modulePriorityOrder:Array<String> = [];

  /**
   * Parses and preloads the game's stage data and scripts when the game starts.
   *
   * If you want to force stages to be reloaded, you can just call this function again.
   */
  public static function loadModuleCache():Void
  {
    // Clear any stages that are cached if there were any.
    clearModuleCache();
    trace("[MODULEHANDLER] Loading module cache...");

    var scriptedModuleClassNames:Array<String> = ScriptedModule.listScriptClasses();
    trace('  Instantiating ${scriptedModuleClassNames.length} modules...');
    for (moduleCls in scriptedModuleClassNames)
    {
      var module:Module = ScriptedModule.init(moduleCls, moduleCls);
      if (module != null)
      {
        trace('    Loaded module: ${moduleCls}');

        // Then store it.
        addToModuleCache(module);
      }
      else
      {
        trace('    Failed to instantiate module: ${moduleCls}');
      }
    }
    reorderModuleCache();

    trace("[MODULEHANDLER] Module cache loaded.");
  }

  public static function buildModuleCallbacks():Void
  {
    FlxG.signals.postStateSwitch.add(onStateSwitchComplete);
  }

  static function onStateSwitchComplete():Void
  {
    callEvent(new StateChangeScriptEvent(STATE_CHANGE_END, FlxG.state, true));
  }

  static function addToModuleCache(module:Module):Void
  {
    moduleCache.set(module.moduleId, module);
  }

  static function reorderModuleCache():Void
  {
    modulePriorityOrder = moduleCache.keys().array();

    modulePriorityOrder.sort(sortByPriority);
  }

  /**
   * Given two module IDs, sort them by priority.
   * @return 1 or -1 depending on which module has a higher priority.
   */
<<<<<<< HEAD
<<<<<<< HEAD
  static function sortByPriority(a:String, b:String):Int
  {
    var aModule:Null<Module> = getModule(a);
    var bModule:Null<Module> = getModule(b);

    if (aModule == null || bModule == null)
    {
      return 0;
    }
=======
  static function sortByPriority(a:String, b:String)
||||||| parent of b150c43d (lol4)
  static function sortByPriority(a:String, b:String)
=======
  static function sortByPriority(a:String, b:String):Int
>>>>>>> b150c43d (lol4)
  {
    var aModule:Null<Module> = getModule(a);
    var bModule:Null<Module> = getModule(b);

<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    if (aModule == null || bModule == null)
    {
      return 0;
    }
>>>>>>> b150c43d (lol4)
    if (aModule.priority != bModule.priority)
    {
      return aModule.priority - bModule.priority;
    }
    else
    {
      return SortUtil.alphabetically(a, b);
    }
  }

<<<<<<< HEAD
<<<<<<< HEAD
  public static function getModule(moduleId:String):Null<Module>
=======
  public static function getModule(moduleId:String):Module
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public static function getModule(moduleId:String):Module
=======
  public static function getModule(moduleId:String):Null<Module>
>>>>>>> b150c43d (lol4)
  {
    return moduleCache.get(moduleId);
  }

  public static function activateModule(moduleId:String):Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
    var module:Null<Module> = getModule(moduleId);
=======
    var module:Module = getModule(moduleId);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var module:Module = getModule(moduleId);
=======
    var module:Null<Module> = getModule(moduleId);
>>>>>>> b150c43d (lol4)
    if (module != null)
    {
      module.active = true;
    }
  }

  public static function deactivateModule(moduleId:String):Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
    var module:Null<Module> = getModule(moduleId);
=======
    var module:Module = getModule(moduleId);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var module:Module = getModule(moduleId);
=======
    var module:Null<Module> = getModule(moduleId);
>>>>>>> b150c43d (lol4)
    if (module != null)
    {
      module.active = false;
    }
  }

  /**
   * Clear the module cache, forcing all modules to call shutdown events.
   */
  public static function clearModuleCache():Void
  {
    if (moduleCache != null)
    {
      var event = new ScriptEvent(DESTROY, false);

      // Note: Ignore stopPropagation()
      for (key => value in moduleCache)
      {
        ScriptEventDispatcher.callEvent(value, event);
      }

      moduleCache.clear();
      modulePriorityOrder = [];
    }
  }

  public static function callEvent(event:ScriptEvent):Void
  {
    for (moduleId in modulePriorityOrder)
    {
<<<<<<< HEAD
<<<<<<< HEAD
      var module:Null<Module> = moduleCache.get(moduleId);
      // The module needs to be active to receive events.
      if (module != null && module.active)
      {
        if (module.state != null)
        {
          // Only call the event if the current state is what the module's state is.
          if (!(Type.getClass(FlxG.state) == module.state) && !(Type.getClass(FlxG.state?.subState) == module.state))
          {
            continue;
          }
        }
=======
      var module:Module = moduleCache.get(moduleId);
||||||| parent of b150c43d (lol4)
      var module:Module = moduleCache.get(moduleId);
=======
      var module:Null<Module> = moduleCache.get(moduleId);
>>>>>>> b150c43d (lol4)
      // The module needs to be active to receive events.
      if (module != null && module.active)
      {
<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
        if (module.state != null)
        {
          // Only call the event if the current state is what the module's state is.
          if (!(Type.getClass(FlxG.state) == module.state) && !(Type.getClass(FlxG.state?.subState) == module.state))
          {
            continue;
          }
        }
>>>>>>> b150c43d (lol4)
        ScriptEventDispatcher.callEvent(module, event);
      }
    }
  }

  public static inline function callOnCreate():Void
  {
    callEvent(new ScriptEvent(CREATE, false));
  }
}
