package funkin.graphics.video;

import flixel.util.FlxColor;
<<<<<<< HEAD
import funkin.audio.FunkinSound;
=======
import flixel.util.FlxSignal.FlxTypedSignal;
import funkin.audio.FunkinSound;
import openfl.display3D.textures.TextureBase;
>>>>>>> e11c5f8d (Add files via upload)
import openfl.events.NetStatusEvent;
import openfl.media.SoundTransform;
import openfl.media.Video;
import openfl.net.NetConnection;
import openfl.net.NetStream;

/**
 * Plays a video via a NetStream. Only works on HTML5.
<<<<<<< HEAD
 * This does NOT replace hxvlc, nor does hxvlc replace this.
 * hxvlc only works on native and does not work on HTML5!
 */
@:nullSafety
=======
 * This does NOT replace hxCodec, nor does hxCodec replace this.
 * hxCodec only works on desktop and does not work on HTML5!
 */
>>>>>>> e11c5f8d (Add files via upload)
class FlxVideo extends FunkinSprite
{
  var video:Video;
  var netStream:NetStream;
  var videoPath:String;

  /**
   * A callback to execute when the video finishes.
   */
<<<<<<< HEAD
  public var finishCallback:Null<Void->Void> = null;

  @:nullSafety(Off)
=======
  public var finishCallback:Void->Void;

>>>>>>> e11c5f8d (Add files via upload)
  public function new(videoPath:String)
  {
    super();

    this.videoPath = videoPath;

<<<<<<< HEAD
    @:nullSafety(Off) // Why do I to do this here as well for this to build?
=======
>>>>>>> e11c5f8d (Add files via upload)
    makeGraphic(2, 2, FlxColor.TRANSPARENT);

    video = new Video();
    video.x = 0;
    video.y = 0;
    video.alpha = 0;

    FlxG.game.addChild(video);

    var netConnection:NetConnection = new NetConnection();
    netConnection.connect(null);

    netStream = new NetStream(netConnection);
    netStream.client = {onMetaData: onClientMetaData};
    netConnection.addEventListener(NetStatusEvent.NET_STATUS, onNetConnectionNetStatus);
    netStream.play(videoPath);
  }

  /**
   * Tell the FlxVideo to pause playback.
   */
  public function pauseVideo():Void
  {
    if (netStream != null)
    {
      netStream.pause();
    }
  }

  /**
   * Tell the FlxVideo to resume if it is paused.
   */
  public function resumeVideo():Void
  {
    // Resume playing the video.
    if (netStream != null)
    {
      netStream.resume();
    }
  }

  var videoAvailable:Bool = false;
<<<<<<< HEAD
  var frameTimer:Float = 0;
=======
  var frameTimer:Float;
>>>>>>> e11c5f8d (Add files via upload)

  static final FRAME_RATE:Float = 60;

  public override function update(elapsed:Float):Void
  {
    super.update(elapsed);

    if (frameTimer >= (1 / FRAME_RATE))
    {
      frameTimer = 0;
      // TODO: We just draw the video buffer to the sprite 60 times a second.
      // Can we copy the video buffer instead somehow?
      pixels.draw(video);
    }

    if (videoAvailable) frameTimer += elapsed;
  }

  /**
   * Tell the FlxVideo to seek to the beginning.
   */
  public function restartVideo():Void
  {
    // Seek to the beginning of the video.
    if (netStream != null)
    {
      netStream.seek(0);
    }
  }

  /**
   * Tell the FlxVideo to end.
   */
  public function finishVideo():Void
  {
    netStream.dispose();
    FlxG.removeChild(video);

    if (finishCallback != null) finishCallback();
  }

  public override function destroy():Void
  {
    if (netStream != null)
    {
      netStream.dispose();

      if (FlxG.game.contains(video)) FlxG.game.removeChild(video);
    }

    super.destroy();
  }

  /**
   * Callback executed when the video stream loads.
   * @param metaData The metadata of the video
   */
  public function onClientMetaData(metaData:Dynamic):Void
  {
    video.attachNetStream(netStream);

    onVideoReady();
  }

  function onVideoReady():Void
  {
    video.width = FlxG.width;
    video.height = FlxG.height;

    videoAvailable = true;

    FunkinSound.onVolumeChanged.add(onVolumeChanged);
    onVolumeChanged(FlxG.sound.muted ? 0 : FlxG.sound.volume);

    makeGraphic(Std.int(video.width), Std.int(video.height), FlxColor.TRANSPARENT);
  }

  function onVolumeChanged(volume:Float):Void
  {
    netStream.soundTransform = new SoundTransform(volume);
  }

  function onNetConnectionNetStatus(event:NetStatusEvent):Void
  {
    if (event.info.code == 'NetStream.Play.Complete') finishVideo();
  }
}
