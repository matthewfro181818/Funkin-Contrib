package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

<<<<<<< HEAD
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
class HSVShader extends FlxRuntimeShader
{
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var value(default, set):Float;

  public function new()
  {
    super(Assets.getText(Paths.frag('hsv')));
    FlxG.debugger.addTrackerProfile(new TrackerProfile(HSVShader, ['hue', 'saturation', 'value']));
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    hue = h;
    saturation = s;
    value = v;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
class HSVShader extends FlxRuntimeShader
{
  public var hue(default, set):Float;
  public var saturation(default, set):Float;
  public var value(default, set):Float;

  public function new()
  {
    super(Assets.getText(Paths.frag('hsv')));
    FlxG.debugger.addTrackerProfile(new TrackerProfile(HSVShader, ['hue', 'saturation', 'value']));
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
    hue = h;
    saturation = s;
    value = v;
=======
    hue = 1;
    saturation = 1;
    value = 1;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    hue = 1;
    saturation = 1;
    value = 1;
=======
    hue = h;
    saturation = s;
    value = v;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    hue = h;
    saturation = s;
    value = v;
=======
    hue = 1;
    saturation = 1;
    value = 1;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    hue = h;
    saturation = s;
    value = v;
=======
    hue = 1;
    saturation = 1;
    value = 1;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
