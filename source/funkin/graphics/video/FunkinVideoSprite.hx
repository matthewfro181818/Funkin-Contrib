package funkin.graphics.video;

<<<<<<< HEAD
#if hxvlc
import hxvlc.flixel.FlxVideoSprite;
import funkin.Preferences;

/**
 * Not to be confused with FlxVideo, this is a hxvlc based video class
 * We override it simply to correct/control our volume easier.
 */
@:nullSafety
class FunkinVideoSprite extends FlxVideoSprite
{
  public function new(x:Float = 0, y:Float = 0)
  {
    super(x, y);
    // null safety fucking SUCKS
    if (bitmap != null)
    {
      bitmap.onOpening.add(function():Void {
        if (bitmap != null) bitmap.audioDelay = Preferences.globalOffset * 1000; // Microseconds
      });
    }
=======
#if hxCodec
import hxcodec.flixel.FlxVideoSprite;

/**
 * Not to be confused with FlxVideo, this is a hxcodec based video class
 * We override it simply to correct/control our volume easier.
 */
class FunkinVideoSprite extends FlxVideoSprite
{
  public var volume(default, set):Float = 1;

  public function new(x:Float = 0, y:Float = 0)
  {
    super(x, y);

    set_volume(1);
  }

  override public function update(elapsed:Float):Void
  {
    super.update(elapsed);
    set_volume(volume);
  }

  function set_volume(value:Float):Float
  {
    volume = value;
    bitmap.volume = Std.int((FlxG.sound.muted ? 0 : 1) * (FlxG.sound.logToLinear(FlxG.sound.volume) * 100) * volume);
    return volume;
>>>>>>> e11c5f8d (Add files via upload)
  }
}
#end
