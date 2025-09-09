package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
class HSVShader extends FlxRuntimeShader
{
  public var hue(default, set):Float = 1;
  public var saturation(default, set):Float = 1;
  public var value(default, set):Float = 1;

  public function new(h:Float = 1, s:Float = 1, v:Float = 1)
  {
    super(Assets.getText(Paths.frag('hsv')));
    FlxG.debugger.addTrackerProfile(new TrackerProfile(HSVShader, ['hue', 'saturation', 'value']));
    hue = h;
    saturation = s;
    value = v;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class HSVShader extends FlxRuntimeShader
{
  public var hue(default, set):Float = 1;
  public var saturation(default, set):Float = 1;
  public var value(default, set):Float = 1;

  public function new(h:Float = 1, s:Float = 1, v:Float = 1)
  {
    super(Assets.getText(Paths.frag('hsv')));
    FlxG.debugger.addTrackerProfile(new TrackerProfile(HSVShader, ['hue', 'saturation', 'value']));
<<<<<<< HEAD
    hue = 1;
    saturation = 1;
    value = 1;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    hue = 1;
    saturation = 1;
    value = 1;
=======
    hue = h;
    saturation = s;
    value = v;
>>>>>>> b150c43d (lol4)
  }

  function set_hue(value:Float):Float
  {
    this.setFloat('_hue', value);
    this.hue = value;

    return this.hue;
  }

  function set_saturation(value:Float):Float
  {
    this.setFloat('_sat', value);
    this.saturation = value;

    return this.saturation;
  }

  function set_value(value:Float):Float
  {
    this.setFloat('_val', value);
    this.value = value;

    return this.value;
  }
}
