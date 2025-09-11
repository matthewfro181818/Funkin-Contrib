package funkin.play.event;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
import flixel.tweens.FlxEase;
>>>>>>> 8a1f54ca (lol8)
// Data from the chart
import funkin.data.song.SongData;
import funkin.data.song.SongData.SongEventData;
// Data from the event schema
<<<<<<< HEAD
=======
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
import flixel.tweens.FlxEase;
||||||| parent of b150c43d (lol4)
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
import flixel.tweens.FlxEase;
=======
>>>>>>> b150c43d (lol4)
// Data from the chart
import funkin.data.song.SongData.SongEventData;
// Data from the event schema
<<<<<<< HEAD
import funkin.play.event.SongEvent;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.play.event.SongEvent;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.play.event.SongEvent;
>>>>>>> 8a1f54ca (lol8)
import funkin.data.event.SongEventSchema;
import funkin.data.event.SongEventSchema.SongEventFieldType;

/**
 * This class represents a handler for configuring camera bop intensity and rate.
 *
 * Example: Bop the camera twice as hard, once per beat (rather than once every four beats).
 * ```
 * {
 *   'e': 'SetCameraBop',
 *   'v': {
 *    'intensity': 2.0,
 *    'rate': 1,
 *   }
 * }
 * ```
 *
 * Example: Reset the camera bop to default values.
 * ```
 * {
 *   'e': 'SetCameraBop',
 * 	 'v': {}
 * }
 * ```
 */
class SetCameraBopSongEvent extends SongEvent
{
  public function new()
  {
    super('SetCameraBop');
  }

  public override function handleEvent(data:SongEventData):Void
  {
    // Does nothing if there is no PlayState camera or stage.
    if (PlayState.instance == null) return;

    var rate:Null<Int> = data.getInt('rate');
    if (rate == null) rate = Constants.DEFAULT_ZOOM_RATE;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var offset:Null<Int> = data.getInt('offset');
    if (rate == null) offset = Constants.DEFAULT_ZOOM_OFFSET;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    var offset:Null<Int> = data.getInt('offset');
    if (rate == null) offset = Constants.DEFAULT_ZOOM_OFFSET;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var offset:Null<Int> = data.getInt('offset');
    if (rate == null) offset = Constants.DEFAULT_ZOOM_OFFSET;
=======
>>>>>>> 8a1f54ca (lol8)
    var intensity:Null<Float> = data.getFloat('intensity');
    if (intensity == null) intensity = 1.0;

    PlayState.instance.cameraBopIntensity = (Constants.DEFAULT_BOP_INTENSITY - 1.0) * intensity + 1.0;
    PlayState.instance.hudCameraZoomIntensity = (Constants.DEFAULT_BOP_INTENSITY - 1.0) * intensity * 2.0;
    PlayState.instance.cameraZoomRate = rate;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    PlayState.instance.cameraZoomRateOffset = offset;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    PlayState.instance.cameraZoomRateOffset = offset;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    PlayState.instance.cameraZoomRateOffset = offset;
=======
>>>>>>> 8a1f54ca (lol8)
    trace('Set camera zoom rate to ${PlayState.instance.cameraZoomRate}');
  }

  public override function getTitle():String
  {
    return 'Set Camera Bop';
  }

  /**
   * ```
   * {
   *   'intensity': FLOAT, // Zoom amount
   *   'rate': INT, // Zoom rate (beats/zoom)
   * }
   * ```
   * @return SongEventSchema
   */
  public override function getEventSchema():SongEventSchema
  {
    return new SongEventSchema([
      {
        name: 'intensity',
        title: 'Intensity',
        defaultValue: 1.0,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        min: 0,
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
        min: 0,
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        min: 0,
=======
>>>>>>> 8a1f54ca (lol8)
        step: 0.1,
        type: SongEventFieldType.FLOAT,
        units: 'x'
      },
      {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        name: 'offset',
        title: 'Offset',
        defaultValue: 0,
        step: 1,
        type: SongEventFieldType.INTEGER,
        units: 'beats'
      },
      {
||||||| parent of b150c43d (lol4)
=======
        name: 'offset',
        title: 'Offset',
        defaultValue: 0,
        step: 1,
        type: SongEventFieldType.INTEGER,
        units: 'beats'
      },
      {
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        name: 'offset',
        title: 'Offset',
        defaultValue: 0,
        step: 1,
        type: SongEventFieldType.INTEGER,
        units: 'beats'
      },
      {
=======
>>>>>>> 8a1f54ca (lol8)
        name: 'rate',
        title: 'Rate',
        defaultValue: 4,
<<<<<<< HEAD
<<<<<<< HEAD
        min: 0,
=======
        name: 'rate',
        title: 'Rate',
        defaultValue: 4,
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
        min: 0,
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        min: 0,
=======
>>>>>>> 8a1f54ca (lol8)
        step: 1,
        type: SongEventFieldType.INTEGER,
        units: 'beats/zoom'
      }
    ]);
  }
}
