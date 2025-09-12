package funkin.play.event;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
=======
>>>>>>> 905084b8 (idk2)
import flixel.tweens.FlxEase;
// Data from the chart
import funkin.data.song.SongData.SongEventData;
// Data from the event schema
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
||||||| parent of b150c43d (lol4)
import flixel.tweens.FlxTween;
import flixel.FlxCamera;
=======
>>>>>>> b150c43d (lol4)
import flixel.tweens.FlxEase;
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
||||||| parent of 905084b8 (idk2)
import funkin.play.event.SongEvent;
=======
>>>>>>> 905084b8 (idk2)
import funkin.data.event.SongEventSchema;
import funkin.data.event.SongEventSchema.SongEventFieldType;

/**
 * This class represents a handler for scroll speed events.
 *
 * Example: Scroll speed change of both strums from 1x to 1.3x:
 * ```
 * {
 *   'e': 'ScrollSpeed',
 *   "v": {
 *      "scroll": "1.3",
 *      "duration": "4",
 *      "ease": "linear",
 *      "strumline": "both",
 *      "absolute": false
 *    }
 * }
 * ```
 */
class ScrollSpeedEvent extends SongEvent
{
  public function new()
  {
    super('ScrollSpeed');
  }

  static final DEFAULT_SCROLL:Float = 1;
  static final DEFAULT_DURATION:Float = 4.0;
  static final DEFAULT_EASE:String = 'linear';
  static final DEFAULT_ABSOLUTE:Bool = false;
  static final DEFAULT_STRUMLINE:String = 'both'; // my special little trick

  public override function handleEvent(data:SongEventData):Void
  {
    // Does nothing if there is no PlayState.
    if (PlayState.instance == null) return;

    var scroll:Float = data.getFloat('scroll') ?? DEFAULT_SCROLL;

    var duration:Float = data.getFloat('duration') ?? DEFAULT_DURATION;

    var ease:String = data.getString('ease') ?? DEFAULT_EASE;

    var strumline:String = data.getString('strumline') ?? DEFAULT_STRUMLINE;

    var absolute:Bool = data.getBool('absolute') ?? DEFAULT_ABSOLUTE;

    var strumlineNames:Array<String> = [];

    if (!absolute)
    {
      // If absolute is set to false, do the awesome multiplicative thing
      scroll = scroll * (PlayState.instance?.currentChart?.scrollSpeed ?? 1.0);
    }

    switch (strumline)
    {
      case 'both':
        strumlineNames = ['playerStrumline', 'opponentStrumline'];
      default:
        strumlineNames = [strumline + 'Strumline'];
    }
    // If it's a string, check the value.
    switch (ease)
    {
      case 'INSTANT':
        PlayState.instance.tweenScrollSpeed(scroll, 0, null, strumlineNames);
      default:
        var durSeconds = Conductor.instance.stepLengthMs * duration / 1000;
        var easeFunction:Null<Float->Float> = Reflect.field(FlxEase, ease);
        if (easeFunction == null)
        {
          trace('Invalid ease function: $ease');
          return;
        }

        PlayState.instance.tweenScrollSpeed(scroll, durSeconds, easeFunction, strumlineNames);
    }
  }

  public override function getTitle():String
  {
    return 'Scroll Speed';
  }

  /**
   * ```
   * {
   *   'scroll': FLOAT, // Target scroll level.
   *   'duration': FLOAT, // Duration in steps.
   *   'ease': ENUM, // Easing function.
   *   'strumline': ENUM, // Which strumline to change
   *   'absolute': BOOL, // True to set the scroll speed to the target level, false to set the scroll speed to (target level x base scroll speed)
   * }
   * @return SongEventSchema
   */
  public override function getEventSchema():SongEventSchema
  {
    return new SongEventSchema([
      {
        name: 'scroll',
        title: 'Target Value',
        defaultValue: 1.0,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        min: 0.1,
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
        min: 0.1,
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        min: 0.1,
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
        min: 0.1,
>>>>>>> 905084b8 (idk2)
        step: 0.1,
        type: SongEventFieldType.FLOAT,
        units: 'x'
      },
      {
        name: 'duration',
        title: 'Duration',
        defaultValue: 4.0,
<<<<<<< HEAD
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
||||||| parent of 905084b8 (idk2)
=======
        min: 0,
>>>>>>> 905084b8 (idk2)
        step: 0.5,
        type: SongEventFieldType.FLOAT,
        units: 'steps'
      },
      {
        name: 'ease',
        title: 'Easing Type',
        defaultValue: 'linear',
        type: SongEventFieldType.ENUM,
        keys: [
          'Linear' => 'linear',
          'Instant (Ignores Duration)' => 'INSTANT',
          'Sine In' => 'sineIn',
          'Sine Out' => 'sineOut',
          'Sine In/Out' => 'sineInOut',
          'Quad In' => 'quadIn',
          'Quad Out' => 'quadOut',
          'Quad In/Out' => 'quadInOut',
          'Cube In' => 'cubeIn',
          'Cube Out' => 'cubeOut',
          'Cube In/Out' => 'cubeInOut',
          'Quart In' => 'quartIn',
          'Quart Out' => 'quartOut',
          'Quart In/Out' => 'quartInOut',
          'Quint In' => 'quintIn',
          'Quint Out' => 'quintOut',
          'Quint In/Out' => 'quintInOut',
          'Expo In' => 'expoIn',
          'Expo Out' => 'expoOut',
          'Expo In/Out' => 'expoInOut',
          'Smooth Step In' => 'smoothStepIn',
          'Smooth Step Out' => 'smoothStepOut',
          'Smooth Step In/Out' => 'smoothStepInOut',
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          'Smoother Step In' => 'smootherStepIn',
          'Smoother Step Out' => 'smootherStepOut',
          'Smoother Step In/Out' => 'smootherStepInOut',
||||||| parent of 8a1f54ca (lol8)
          'Smoother Step In' => 'smootherStepIn',
          'Smoother Step Out' => 'smootherStepOut',
          'Smoother Step In/Out' => 'smootherStepInOut',
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
          'Smoother Step In' => 'smootherStepIn',
          'Smoother Step Out' => 'smootherStepOut',
          'Smoother Step In/Out' => 'smootherStepInOut',
>>>>>>> 905084b8 (idk2)
          'Elastic In' => 'elasticIn',
          'Elastic Out' => 'elasticOut',
<<<<<<< HEAD
<<<<<<< HEAD
          'Elastic In/Out' => 'elasticInOut',
          'Back In' => 'backIn',
          'Back Out' => 'backOut',
          'Back In/Out' => 'backInOut',
          'Bounce In' => 'bounceIn',
          'Bounce Out' => 'bounceOut',
          'Bounce In/Out' => 'bounceInOut',
          'Circ In' => 'circIn',
          'Circ Out' => 'circOut',
          'Circ In/Out' => 'circInOut'
=======
||||||| parent of b150c43d (lol4)
=======
          'Smoother Step In' => 'smootherStepIn',
          'Smoother Step Out' => 'smootherStepOut',
          'Smoother Step In/Out' => 'smootherStepInOut',
>>>>>>> b150c43d (lol4)
          'Elastic In' => 'elasticIn',
          'Elastic Out' => 'elasticOut',
<<<<<<< HEAD
          'Elastic In/Out' => 'elasticInOut'
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          'Elastic In/Out' => 'elasticInOut'
=======
          'Elastic In/Out' => 'elasticInOut',
          'Back In' => 'backIn',
          'Back Out' => 'backOut',
          'Back In/Out' => 'backInOut',
          'Bounce In' => 'bounceIn',
          'Bounce Out' => 'bounceOut',
          'Bounce In/Out' => 'bounceInOut',
          'Circ In' => 'circIn',
          'Circ Out' => 'circOut',
          'Circ In/Out' => 'circInOut'
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          'Elastic In/Out' => 'elasticInOut',
          'Back In' => 'backIn',
          'Back Out' => 'backOut',
          'Back In/Out' => 'backInOut',
          'Bounce In' => 'bounceIn',
          'Bounce Out' => 'bounceOut',
          'Bounce In/Out' => 'bounceInOut',
          'Circ In' => 'circIn',
          'Circ Out' => 'circOut',
          'Circ In/Out' => 'circInOut'
=======
          'Elastic In/Out' => 'elasticInOut'
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          'Elastic In/Out' => 'elasticInOut'
=======
          'Elastic In/Out' => 'elasticInOut',
          'Back In' => 'backIn',
          'Back Out' => 'backOut',
          'Back In/Out' => 'backInOut',
          'Bounce In' => 'bounceIn',
          'Bounce Out' => 'bounceOut',
          'Bounce In/Out' => 'bounceInOut',
          'Circ In' => 'circIn',
          'Circ Out' => 'circOut',
          'Circ In/Out' => 'circInOut'
>>>>>>> 905084b8 (idk2)
        ]
      },
      {
        name: 'strumline',
        title: 'Target Strumline',
        defaultValue: 'both',
        type: SongEventFieldType.ENUM,
        keys: ['Both' => 'both', 'Player' => 'player', 'Opponent' => 'opponent']
      },
      {
        name: 'absolute',
        title: 'Absolute',
        defaultValue: false,
        type: SongEventFieldType.BOOL,
      }
    ]);
  }
}
