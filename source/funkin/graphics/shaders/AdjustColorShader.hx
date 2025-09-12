package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
class AdjustColorShader extends FlxRuntimeShader
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var hue(default, set):Float = 0;
  public var saturation(default, set):Float = 0;
  public var brightness(default, set):Float = 0;
  public var contrast(default, set):Float = 0;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class AdjustColorShader extends FlxRuntimeShader
{
<<<<<<< HEAD
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var brightness(default, set):Float;
  public var contrast(default, set):Float;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var brightness(default, set):Float;
  public var contrast(default, set):Float;
=======
  public var hue(default, set):Float = 0;
  public var saturation(default, set):Float = 0;
  public var brightness(default, set):Float = 0;
  public var contrast(default, set):Float = 0;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var hue(default, set):Float = 0;
  public var saturation(default, set):Float = 0;
  public var brightness(default, set):Float = 0;
  public var contrast(default, set):Float = 0;
=======
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var brightness(default, set):Float;
  public var contrast(default, set):Float;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var brightness(default, set):Float;
  public var contrast(default, set):Float;
=======
  public var hue(default, set):Float = 0;
  public var saturation(default, set):Float = 0;
  public var brightness(default, set):Float = 0;
  public var contrast(default, set):Float = 0;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var hue(default, set):Float = 0;
  public var saturation(default, set):Float = 0;
  public var brightness(default, set):Float = 0;
  public var contrast(default, set):Float = 0;
=======
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var brightness(default, set):Float;
  public var contrast(default, set):Float;
>>>>>>> cd960b0a (idk7)

  public function new()
  {
    super(Assets.getText(Paths.frag('adjustColor')));
    // FlxG.debugger.addTrackerProfile(new TrackerProfile(HSVShader, ['hue', 'saturation', 'brightness', 'contrast']));
    hue = 0;
    saturation = 0;
    brightness = 0;
    contrast = 0;
  }

  function set_hue(value:Float):Float
  {
    this.setFloat('hue', value);
    this.hue = value;

    return this.hue;
  }

  function set_saturation(value:Float):Float
  {
    this.setFloat('saturation', value);
    this.saturation = value;

    return this.saturation;
  }

  function set_brightness(value:Float):Float
  {
    this.setFloat('brightness', value);
    this.brightness = value;

    return this.brightness;
  }

  function set_contrast(value:Float):Float
  {
    this.setFloat('contrast', value);
    this.contrast = value;

    return this.contrast;
  }

  public override function toString():String
  {
    return 'AdjustColorShader(${this.hue}, ${this.saturation}, ${this.brightness}, ${this.contrast})';
  }
}
