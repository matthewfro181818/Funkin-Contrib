package funkin.graphics.shaders;

import flixel.util.FlxColor;
import openfl.display.ShaderParameter;

typedef BlendModeShader =
{
  var uBlendColor:ShaderParameter<Float>;
}

<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
class BlendModeEffect
{
  public var shader(default, null):BlendModeShader;

  @:isVar
<<<<<<< HEAD
  public var color(default, set):FlxColor = new FlxColor();
=======
  public var color(default, set):FlxColor;
>>>>>>> e11c5f8d (Add files via upload)

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
