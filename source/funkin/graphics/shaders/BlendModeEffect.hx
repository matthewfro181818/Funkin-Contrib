package funkin.graphics.shaders;

import flixel.util.FlxColor;
import openfl.display.ShaderParameter;

typedef BlendModeShader =
{
  var uBlendColor:ShaderParameter<Float>;
}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
class BlendModeEffect
{
  public var shader(default, null):BlendModeShader;

  @:isVar
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var color(default, set):FlxColor = new FlxColor();
=======
  public var color(default, set):FlxColor;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var color(default, set):FlxColor;
=======
  public var color(default, set):FlxColor = new FlxColor();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var color(default, set):FlxColor = new FlxColor();
=======
  public var color(default, set):FlxColor;
>>>>>>> 8a1f54ca (lol8)

  public function new(shader:BlendModeShader, color:FlxColor):Void
  {
    shader.uBlendColor.value = [];
    this.shader = shader;
    this.color = color;
  }

  function set_color(color:FlxColor):FlxColor
  {
    shader.uBlendColor.value[0] = color.redFloat;
    shader.uBlendColor.value[1] = color.greenFloat;
    shader.uBlendColor.value[2] = color.blueFloat;
    shader.uBlendColor.value[3] = color.alphaFloat;

    return this.color = color;
  }
}
