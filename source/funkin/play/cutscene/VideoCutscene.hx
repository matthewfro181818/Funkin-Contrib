package funkin.play.cutscene;

import funkin.play.PlayState;
import flixel.FlxSprite;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxSignal;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.util.FlxTimer;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.util.FlxTimer;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.util.FlxTimer;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import flixel.util.FlxTimer;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
#if html5
import funkin.graphics.video.FlxVideo;
#end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
#if hxvlc
=======
import flixel.util.FlxTimer;
||||||| parent of b150c43d (lol4)
import flixel.util.FlxTimer;
=======
>>>>>>> b150c43d (lol4)
#if html5
import funkin.graphics.video.FlxVideo;
#end
<<<<<<< HEAD
#if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
#if hxCodec
=======
#if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
#if hxvlc
=======
#if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
#if hxCodec
=======
#if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
#if hxvlc
=======
#if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
#if hxvlc
=======
#if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import funkin.graphics.video.FunkinVideoSprite;
#end

/**
 * Assumes you are in the PlayState.
 */
class VideoCutscene
{
  static var blackScreen:FlxSprite;
  static var cutsceneType:CutsceneType;

  #if html5
  static var vid:FlxVideo;
  #end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  #if hxvlc
=======
  #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  #if hxCodec
=======
  #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  #if hxvlc
=======
  #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  #if hxCodec
=======
  #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  #if hxvlc
=======
  #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  #if hxvlc
=======
  #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  static var vid:FunkinVideoSprite;
  #end

  /**
   * Called when the video is started.
   */
  public static final onVideoStarted:FlxSignal = new FlxSignal();

  /**
   * Called if the video is paused.
   */
  public static final onVideoPaused:FlxSignal = new FlxSignal();

  /**
   * Called if the video is resumed.
   */
  public static final onVideoResumed:FlxSignal = new FlxSignal();

  /**
   * Called if the video is restarted. onVideoStarted is not called.
   */
  public static final onVideoRestarted:FlxSignal = new FlxSignal();

  /**
   * Called when the video is ended or skipped.
   */
  public static final onVideoEnded:FlxSignal = new FlxSignal();

  /**
   * Play a video cutscene.
   * TODO: Currently this is hardcoded to start the countdown after the video is done.
   * @param path The path to the video file. Use Paths.file(path) to get the correct path.
   * @param cutseneType The type of cutscene to play, determines what the game does after. Defaults to `CutsceneType.STARTING`.
   */
  public static function play(filePath:String, ?cutsceneType:CutsceneType = STARTING):Void
  {
    if (PlayState.instance == null) return;

    if (!openfl.Assets.exists(filePath))
    {
      // Display a popup.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      // funkin.util.WindowUtil.showError('Error playing video', 'Video file does not exist: ${filePath}');
=======
      // lime.app.Application.current.window.alert('Video file does not exist: ${filePath}', 'Error playing video');
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      // lime.app.Application.current.window.alert('Video file does not exist: ${filePath}', 'Error playing video');
=======
      // funkin.util.WindowUtil.showError('Error playing video', 'Video file does not exist: ${filePath}');
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      // funkin.util.WindowUtil.showError('Error playing video', 'Video file does not exist: ${filePath}');
=======
      // lime.app.Application.current.window.alert('Video file does not exist: ${filePath}', 'Error playing video');
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      // lime.app.Application.current.window.alert('Video file does not exist: ${filePath}', 'Error playing video');
=======
      // funkin.util.WindowUtil.showError('Error playing video', 'Video file does not exist: ${filePath}');
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      // funkin.util.WindowUtil.showError('Error playing video', 'Video file does not exist: ${filePath}');
=======
      // lime.app.Application.current.window.alert('Video file does not exist: ${filePath}', 'Error playing video');
>>>>>>> cd960b0a (idk7)
      // return;

      // TODO: After moving videos to their own library,
      // this function ALWAYS FAILS on web, but the video still plays.
      // I think that's due to a weird quirk with how OpenFL libraries work.
      trace('Video file does not exist: ${filePath}');
    }

    var rawFilePath = Paths.stripLibrary(filePath);

    // Trigger the cutscene. Don't play the song in the background.
    PlayState.instance.isInCutscene = true;
    PlayState.instance.camHUD.visible = false;

    // Display a black screen to hide the game while the video is playing.
    blackScreen = new FlxSprite(-200, -200).makeGraphic(FlxG.width * 2, FlxG.height * 2, FlxColor.BLACK);
    blackScreen.scrollFactor.set(0, 0);
    blackScreen.cameras = [PlayState.instance.camCutscene];
    PlayState.instance.add(blackScreen);

    VideoCutscene.cutsceneType = cutsceneType;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

||||||| parent of 8a1f54ca (lol8)
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    #if html5
    playVideoHTML5(rawFilePath);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #elseif hxvlc
    playVideoNative(filePath);
=======
||||||| parent of b150c43d (lol4)
=======
    #if mobile
    if (cutsceneType == ENDING)
    {
      PlayState.instance.togglePauseButton();
    }
    #end

>>>>>>> b150c43d (lol4)
    #if html5
    playVideoHTML5(rawFilePath);
<<<<<<< HEAD
    #elseif hxCodec
    playVideoNative(rawFilePath);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #elseif hxCodec
    playVideoNative(rawFilePath);
=======
    #elseif hxvlc
    playVideoNative(filePath);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #elseif hxvlc
    playVideoNative(filePath);
=======
    #elseif hxCodec
    playVideoNative(rawFilePath);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #elseif hxCodec
    playVideoNative(rawFilePath);
=======
    #elseif hxvlc
    playVideoNative(filePath);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #elseif hxvlc
    playVideoNative(filePath);
=======
    #elseif hxCodec
    playVideoNative(rawFilePath);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #elseif hxvlc
    playVideoNative(filePath);
=======
    #elseif hxCodec
    playVideoNative(rawFilePath);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    #else
    throw "No video support for this platform!";
    #end
  }

  public static function isPlaying():Bool
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if (html5 || hxCodec)
=======
    #if (html5 || hxvlc)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if (html5 || hxCodec)
=======
    #if (html5 || hxvlc)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    return vid != null;
    #else
    return false;
    #end
  }

  #if html5
  static function playVideoHTML5(filePath:String):Void
  {
    // Video displays OVER the FlxState.
    vid = new FlxVideo(filePath);
    if (vid != null)
    {
      vid.zIndex = 0;

      vid.finishCallback = finishVideo.bind(0.5);

      vid.cameras = [PlayState.instance.camCutscene];

      PlayState.instance.add(vid);

      PlayState.instance.refresh();

      onVideoStarted.dispatch();
    }
    else
    {
      trace('ALERT: Video is null! Could not play cutscene!');
    }
  }
  #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  #if hxvlc
=======
  #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  #if hxCodec
=======
  #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  #if hxvlc
=======
  #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  #if hxCodec
=======
  #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  #if hxvlc
=======
  #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  #if hxvlc
=======
  #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  static function playVideoNative(filePath:String):Void
  {
    // Video displays OVER the FlxState.
    vid = new FunkinVideoSprite(0, 0);

    if (vid != null)
    {
      vid.zIndex = 0;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
||||||| parent of 8a1f54ca (lol8)
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
      vid.bitmap.onEndReached.add(finishVideo.bind(0.5));
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
||||||| parent of b150c43d (lol4)
=======
      vid.active = false;
      vid.bitmap.onEncounteredError.add(function(msg:String):Void {
        trace('[VLC] Encountered an error: $msg');

        finishVideo(0.5);
      });
>>>>>>> b150c43d (lol4)
      vid.bitmap.onEndReached.add(finishVideo.bind(0.5));
<<<<<<< HEAD
      vid.autoPause = FlxG.autoPause;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      vid.autoPause = FlxG.autoPause;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
      vid.autoPause = FlxG.autoPause;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      vid.autoPause = FlxG.autoPause;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
      vid.autoPause = FlxG.autoPause;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
      vid.autoPause = FlxG.autoPause;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

      vid.cameras = [PlayState.instance.camCutscene];

      PlayState.instance.add(vid);

      PlayState.instance.refresh();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

      if (vid.load(filePath)) vid.play();
||||||| parent of 8a1f54ca (lol8)

      if (vid.load(filePath)) vid.play();
=======
      vid.play(filePath, false);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      vid.play(filePath, false);
=======

      if (vid.load(filePath)) vid.play();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

      if (vid.load(filePath)) vid.play();
=======
      vid.play(filePath, false);
>>>>>>> cd960b0a (idk7)

      // Resize videos bigger or smaller than the screen.
      vid.bitmap.onTextureSetup.add(() -> {
        vid.setGraphicSize(FlxG.width, FlxG.height);
        vid.updateHitbox();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        vid.screenCenter();
=======
      vid.play(filePath, false);
||||||| parent of b150c43d (lol4)
      vid.play(filePath, false);
=======

      if (vid.load(filePath)) vid.play();
>>>>>>> b150c43d (lol4)
||||||| cf89d672

      if (vid.load(filePath)) vid.play();
=======
      vid.play(filePath, false);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

      // Resize videos bigger or smaller than the screen.
      vid.bitmap.onTextureSetup.add(() -> {
        vid.setGraphicSize(FlxG.width, FlxG.height);
        vid.updateHitbox();
<<<<<<< HEAD
<<<<<<< HEAD
        vid.x = 0;
        vid.y = 0;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        vid.x = 0;
        vid.y = 0;
=======
        vid.screenCenter();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        vid.screenCenter();
=======
        vid.x = 0;
        vid.y = 0;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        vid.x = 0;
        vid.y = 0;
=======
        vid.screenCenter();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        vid.screenCenter();
=======
        vid.x = 0;
        vid.y = 0;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
        vid.screenCenter();
=======
        vid.x = 0;
        vid.y = 0;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
        // vid.scale.set(0.5, 0.5);
      });

      onVideoStarted.dispatch();
    }
    else
    {
      trace('ALERT: Video is null! Could not play cutscene!');
    }
  }
  #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static function restartVideo():Void
=======
  public static function restartVideo(resume:Bool = true):Void
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public static function restartVideo(resume:Bool = true):Void
=======
  public static function restartVideo():Void
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static function restartVideo():Void
=======
  public static function restartVideo(resume:Bool = true):Void
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public static function restartVideo(resume:Bool = true):Void
=======
  public static function restartVideo():Void
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public static function restartVideo():Void
=======
  public static function restartVideo(resume:Bool = true):Void
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public static function restartVideo():Void
=======
  public static function restartVideo(resume:Bool = true):Void
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    #if html5
    if (vid != null)
    {
      vid.restartVideo();
      onVideoRestarted.dispatch();
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
    if (vid != null)
    {
      // Seek to the start of the video.
      vid.bitmap.time = 0;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      vid.resume();
=======
    #if hxCodec
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      // Seek to the start of the video.
      vid.bitmap.time = 0;
<<<<<<< HEAD
<<<<<<< HEAD
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

=======
      vid.resume();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      vid.resume();
=======
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

=======
      vid.resume();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      vid.resume();
=======
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

>>>>>>> cd960b0a (idk7)
||||||| cf89d672
      vid.resume();
=======
      if (resume)
      {
        // Resume the video if it was paused.
        vid.resume();
      }

>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
      onVideoRestarted.dispatch();
    }
    #end
  }

  public static function pauseVideo():Void
  {
    #if html5
    if (vid != null)
    {
      vid.pauseVideo();
      onVideoPaused.dispatch();
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
=======
    #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      vid.pause();
      onVideoPaused.dispatch();
    }
    #end
  }

  public static function hideVideo():Void
  {
    #if html5
    if (vid != null)
    {
      vid.visible = false;
      blackScreen.visible = false;
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
=======
    #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      vid.visible = false;
      blackScreen.visible = false;
    }
    #end
  }

  public static function showVideo():Void
  {
    #if html5
    if (vid != null)
    {
      vid.visible = true;
      blackScreen.visible = false;
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
=======
    #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      vid.visible = true;
      blackScreen.visible = false;
    }
    #end
  }

  public static function resumeVideo():Void
  {
    #if html5
    if (vid != null)
    {
      vid.resumeVideo();
      onVideoResumed.dispatch();
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
=======
    #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      vid.resume();
      onVideoResumed.dispatch();
    }
    #end
  }

  /**
   * Finish the active video cutscene. Done when the video is finished or when the player skips the cutscene.
   * @param transitionTime The duration of the transition to the next state. Defaults to 0.5 seconds (this time is always used when cancelling the video).
   * @param finishCutscene The callback to call when the transition is finished.
   */
  public static function finishVideo(?transitionTime:Float = 0.5):Void
  {
    trace('ALERT: Finish video cutscene called!');

    var cutsceneType:CutsceneType = VideoCutscene.cutsceneType;

    #if html5
    if (vid != null)
    {
      PlayState.instance.remove(vid);
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if hxvlc
=======
    #if hxCodec
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if hxCodec
=======
    #if hxvlc
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if hxvlc
=======
    #if hxCodec
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if hxvlc
=======
    #if hxCodec
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    if (vid != null)
    {
      vid.stop();
      PlayState.instance.remove(vid);
    }
    #end

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    #if (html5 || hxCodec)
=======
    #if (html5 || hxvlc)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    #if (html5 || hxCodec)
=======
    #if (html5 || hxvlc)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    #if (html5 || hxvlc)
=======
    #if (html5 || hxCodec)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    vid.destroy();
    vid = null;
    #end

    PlayState.instance.camHUD.visible = true;

    FlxTween.tween(blackScreen, {alpha: 0}, transitionTime,
      {
        ease: FlxEase.quadInOut,
        onComplete: function(twn:FlxTween) {
          PlayState.instance.remove(blackScreen);
          blackScreen = null;
        }
      });
    FlxTween.tween(FlxG.camera, {zoom: PlayState.instance.stageZoom}, transitionTime,
      {
        ease: FlxEase.quadInOut,
        onComplete: function(twn:FlxTween) {
          onVideoEnded.dispatch();
          onCutsceneFinish(cutsceneType);
        }
      });
  }

  /**
   * The default callback used when a cutscene is finished.
   * You can specify your own callback when calling `VideoCutscene#play()`.
   */
  static function onCutsceneFinish(cutsceneType:CutsceneType):Void
  {
    switch (cutsceneType)
    {
      case CutsceneType.STARTING:
        PlayState.instance.startCountdown();
      case CutsceneType.ENDING:
        PlayState.instance.endSong(true); // true = right goddamn now
      case CutsceneType.MIDSONG:
        // Do nothing.
        // throw "Not implemented!";
    }
  }
}

enum CutsceneType
{
  STARTING; // The default cutscene type. Starts the countdown after the video is done.
  MIDSONG; // Does nothing.
  ENDING; // Ends the song after the video is done.
}
