package funkin.graphics.video;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#if hxvlc
import hxvlc.flixel.FlxVideoSprite;
import funkin.Preferences;
||||||| parent of 8a1f54ca (lol8)
#if hxvlc
import hxvlc.flixel.FlxVideoSprite;
import funkin.Preferences;
=======
#if hxCodec
import hxcodec.flixel.FlxVideoSprite;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
#if hxCodec
import hxcodec.flixel.FlxVideoSprite;
=======
#if hxvlc
import hxvlc.flixel.FlxVideoSprite;
import funkin.Preferences;
>>>>>>> 905084b8 (idk2)

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
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)
#if hxCodec
import hxcodec.flixel.FlxVideoSprite;
=======
#if hxvlc
import hxvlc.flixel.FlxVideoSprite;
import funkin.Preferences;
>>>>>>> b150c43d (lol4)

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
<<<<<<< HEAD

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
||||||| parent of b150c43d (lol4)

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
=======
    // null safety fucking SUCKS
    if (bitmap != null)
    {
      bitmap.onOpening.add(function():Void {
        if (bitmap != null) bitmap.audioDelay = Preferences.globalOffset * 1000; // Microseconds
      });
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // null safety fucking SUCKS
    if (bitmap != null)
    {
      bitmap.onOpening.add(function():Void {
        if (bitmap != null) bitmap.audioDelay = Preferences.globalOffset * 1000; // Microseconds
      });
    }
=======

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
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)

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
=======
    // null safety fucking SUCKS
    if (bitmap != null)
    {
      bitmap.onOpening.add(function():Void {
        if (bitmap != null) bitmap.audioDelay = Preferences.globalOffset * 1000; // Microseconds
      });
    }
>>>>>>> 905084b8 (idk2)
  }
}
#end
