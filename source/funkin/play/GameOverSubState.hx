package funkin.play;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.ui.freeplay.charselect.PlayableCharacter;
import flixel.FlxState;
import funkin.data.freeplay.player.PlayerRegistry;
||||||| parent of 8a1f54ca (lol8)
import funkin.ui.freeplay.charselect.PlayableCharacter;
import flixel.FlxState;
import funkin.data.freeplay.player.PlayerRegistry;
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
import funkin.ui.freeplay.charselect.PlayableCharacter;
import flixel.FlxState;
import funkin.data.freeplay.player.PlayerRegistry;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.ui.freeplay.charselect.PlayableCharacter;
import flixel.FlxState;
import funkin.data.freeplay.player.PlayerRegistry;
=======
>>>>>>> cd960b0a (idk7)
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.input.touch.FlxTouch;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.util.HapticUtil;
=======
||||||| parent of b150c43d (lol4)
=======
import funkin.ui.freeplay.charselect.PlayableCharacter;
import flixel.FlxState;
import funkin.data.freeplay.player.PlayerRegistry;
>>>>>>> b150c43d (lol4)
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
import funkin.util.HapticUtil;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.util.HapticUtil;
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
import funkin.util.HapticUtil;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.util.HapticUtil;
=======
>>>>>>> cd960b0a (idk7)
import funkin.audio.FunkinSound;
import funkin.graphics.FunkinSprite;
import funkin.modding.events.ScriptEvent;
import funkin.modding.events.ScriptEventDispatcher;
import funkin.play.character.BaseCharacter;
import funkin.ui.freeplay.FreeplayState;
import funkin.ui.MusicBeatSubState;
import funkin.ui.story.StoryMenuState;
import funkin.util.MathUtil;
import funkin.effects.RetroCameraFade;
import flixel.math.FlxPoint;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.util.TouchUtil;
#if FEATURE_MOBILE_ADVERTISEMENTS
import funkin.mobile.util.AdMobUtil;
#end
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
import funkin.util.TouchUtil;
#if FEATURE_MOBILE_ADVERTISEMENTS
import funkin.mobile.util.AdMobUtil;
#end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.util.TouchUtil;
#if FEATURE_MOBILE_ADVERTISEMENTS
import funkin.mobile.util.AdMobUtil;
#end
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
import funkin.util.TouchUtil;
#if FEATURE_MOBILE_ADVERTISEMENTS
import funkin.mobile.util.AdMobUtil;
#end
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.util.TouchUtil;
#if FEATURE_MOBILE_ADVERTISEMENTS
import funkin.mobile.util.AdMobUtil;
#end
=======
>>>>>>> cd960b0a (idk7)

/**
 * A substate which renders over the PlayState when the player dies.
 * Displays the player death animation, plays the music, and handles restarting the song.
 *
 * The newest implementation uses a substate, which prevents having to reload the song and stage each reset.
 */
@:nullSafety
class GameOverSubState extends MusicBeatSubState
{
  /**
   * The currently active GameOverSubState.
   * There should be only one GameOverSubState in existance at a time, we can use a singleton.
   */
  public static var instance:Null<GameOverSubState> = null;

  /**
   * Which alternate animation on the character to use.
   * You can set this via script.
   * For example, playing a different animation when BF dies in Week 4
   * or Pico dies in Weekend 1.
   */
  public static var animationSuffix:String = '';

  /**
   * Which alternate game over music to use.
   * You can set this via script.
   * For example, the bf-pixel script sets this to `-pixel`
   * and the pico-playable script sets this to `Pico`.
   */
  public static var musicSuffix:String = '';

  /**
   * Which alternate "blue ball" sound effect to use.
   */
  public static var blueBallSuffix:String = '';

  static var blueballed:Bool = false;

  /**
   * The boyfriend character.
   */
  var boyfriend:Null<BaseCharacter> = null;

  /**
   * The invisible object in the scene which the camera focuses on.
   */
  var cameraFollowPoint:FlxObject;

  /**
   * The music playing in the background of the state.
   */
  var gameOverMusic:Null<FunkinSound> = null;

  /**
   * Whether the player has confirmed and prepared to restart the level or to go back to the freeplay menu.
   * This means the animation and transition have already started.
   */
  var isEnding:Bool = false;

  /**
   * Whether the death music is on its first loop.
   */
  var isStarting:Bool = true;

  var isChartingMode:Bool = false;

  var mustNotExit:Bool = false;

  var transparent:Bool;

  static final CAMERA_ZOOM_DURATION:Float = 0.5;

  var targetCameraZoom:Float = 1.0;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var canInput:Bool = false;

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  var canInput:Bool = false;

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var canInput:Bool = false;

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  var canInput:Bool = false;

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var canInput:Bool = false;

=======
>>>>>>> cd960b0a (idk7)
  public function new(params:GameOverParams)
  {
    super();

    this.isChartingMode = params?.isChartingMode ?? false;
    transparent = params.transparent;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    cameraFollowPoint = new FlxObject(0, 0, 1, 1);
    if (parentPlayState != null)
    {
      cameraFollowPoint.x = parentPlayState.cameraFollowPoint.x;
      cameraFollowPoint.y = parentPlayState.cameraFollowPoint.y;
    }
||||||| parent of 8a1f54ca (lol8)
    cameraFollowPoint = new FlxObject(0, 0, 1, 1);
    if (parentPlayState != null)
    {
      cameraFollowPoint.x = parentPlayState.cameraFollowPoint.x;
      cameraFollowPoint.y = parentPlayState.cameraFollowPoint.y;
    }
=======
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(0, 0, 1, 1);
    if (parentPlayState != null)
    {
      cameraFollowPoint.x = parentPlayState.cameraFollowPoint.x;
      cameraFollowPoint.y = parentPlayState.cameraFollowPoint.y;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    cameraFollowPoint = new FlxObject(0, 0, 1, 1);
    if (parentPlayState != null)
    {
      cameraFollowPoint.x = parentPlayState.cameraFollowPoint.x;
      cameraFollowPoint.y = parentPlayState.cameraFollowPoint.y;
    }
=======
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
>>>>>>> cd960b0a (idk7)
  }

  /**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * The PlayState that this GameOverSubState is displaying on top of.
   */
  public var parentPlayState:Null<PlayState>;

  /**
=======
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
||||||| parent of b150c43d (lol4)
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(0, 0, 1, 1);
    if (parentPlayState != null)
    {
      cameraFollowPoint.x = parentPlayState.cameraFollowPoint.x;
      cameraFollowPoint.y = parentPlayState.cameraFollowPoint.y;
    }
>>>>>>> b150c43d (lol4)
  }

  /**
<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
   * The PlayState that this GameOverSubState is displaying on top of.
   */
  public var parentPlayState:Null<PlayState>;

  /**
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
   * The PlayState that this GameOverSubState is displaying on top of.
   */
  public var parentPlayState:Null<PlayState>;

  /**
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
   * The PlayState that this GameOverSubState is displaying on top of.
   */
  public var parentPlayState:Null<PlayState>;

  /**
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
   * The PlayState that this GameOverSubState is displaying on top of.
   */
  public var parentPlayState:Null<PlayState>;

  /**
=======
>>>>>>> cd960b0a (idk7)
   * Reset the game over configuration to the default.
   */
  public static function reset():Void
  {
    animationSuffix = '';
    musicSuffix = '';
    blueBallSuffix = '';
    blueballed = false;
  }

  public override function create():Void
  {
    if (instance != null)
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
      // TODO: Do something in this case? IDK.
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      // TODO: Do something in this case? IDK.
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
      // TODO: Do something in this case? IDK.
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      // TODO: Do something in this case? IDK.
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
      // TODO: Do something in this case? IDK.
>>>>>>> cd960b0a (idk7)
      FlxG.log.warn('WARNING: GameOverSubState instance already exists. This should not happen.');
    }
    instance = this;

    super.create();

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    parentPlayState = cast _parentState;

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    parentPlayState = cast _parentState;

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    parentPlayState = cast _parentState;

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    parentPlayState = cast _parentState;

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    parentPlayState = cast _parentState;

=======
>>>>>>> cd960b0a (idk7)
    //
    // Set up the visuals
    //

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
    var playState = PlayState.instance;

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var playState = PlayState.instance;

=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
    var playState = PlayState.instance;

>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var playState = PlayState.instance;

=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
    var playState = PlayState.instance;

>>>>>>> cd960b0a (idk7)
    // Add a black background to the screen.
    var bg:FunkinSprite = new FunkinSprite().makeSolidColor(FlxG.width * 2, FlxG.height * 2, FlxColor.BLACK);
    // We make this transparent so that we can see the stage underneath during debugging,
    // but it's normally opaque.
    bg.alpha = transparent ? 0.25 : 1.0;
    bg.scrollFactor.set();
    bg.screenCenter();
    add(bg);

    // Pluck Boyfriend from the PlayState and place him (in the same position) in the GameOverSubState.
    // We can then play the character's `firstDeath` animation.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if ((parentPlayState?.isMinimalMode ?? true)) {}
||||||| parent of 8a1f54ca (lol8)
    if ((parentPlayState?.isMinimalMode ?? true)) {}
=======
    if (PlayState.instance.isMinimalMode) {}
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (PlayState.instance.isMinimalMode) {}
=======
    if ((parentPlayState?.isMinimalMode ?? true)) {}
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if ((parentPlayState?.isMinimalMode ?? true)) {}
=======
    if (PlayState.instance.isMinimalMode) {}
>>>>>>> cd960b0a (idk7)
    else
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      boyfriend = parentPlayState?.currentStage?.getBoyfriend(true);
      if (boyfriend != null)
      {
        boyfriend.canPlayOtherAnims = true;
        boyfriend.isDead = true;
        add(boyfriend);
        boyfriend.resetCharacter();
      }
=======
    if (PlayState.instance.isMinimalMode) {}
||||||| parent of b150c43d (lol4)
    if (PlayState.instance.isMinimalMode) {}
=======
    if ((parentPlayState?.isMinimalMode ?? true)) {}
>>>>>>> b150c43d (lol4)
    else
    {
<<<<<<< HEAD
      boyfriend = PlayState.instance.currentStage.getBoyfriend(true);
      boyfriend.canPlayOtherAnims = true;
      boyfriend.isDead = true;
      add(boyfriend);
      boyfriend.resetCharacter();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      boyfriend = PlayState.instance.currentStage.getBoyfriend(true);
      boyfriend.canPlayOtherAnims = true;
      boyfriend.isDead = true;
      add(boyfriend);
      boyfriend.resetCharacter();
=======
      boyfriend = parentPlayState?.currentStage?.getBoyfriend(true);
      if (boyfriend != null)
      {
        boyfriend.canPlayOtherAnims = true;
        boyfriend.isDead = true;
        add(boyfriend);
        boyfriend.resetCharacter();
      }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      boyfriend = parentPlayState?.currentStage?.getBoyfriend(true);
      if (boyfriend != null)
      {
        boyfriend.canPlayOtherAnims = true;
        boyfriend.isDead = true;
        add(boyfriend);
        boyfriend.resetCharacter();
      }
=======
      boyfriend = PlayState.instance.currentStage.getBoyfriend(true);
      boyfriend.canPlayOtherAnims = true;
      boyfriend.isDead = true;
      add(boyfriend);
      boyfriend.resetCharacter();
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      boyfriend = PlayState.instance.currentStage.getBoyfriend(true);
      boyfriend.canPlayOtherAnims = true;
      boyfriend.isDead = true;
      add(boyfriend);
      boyfriend.resetCharacter();
=======
      boyfriend = parentPlayState?.currentStage?.getBoyfriend(true);
      if (boyfriend != null)
      {
        boyfriend.canPlayOtherAnims = true;
        boyfriend.isDead = true;
        add(boyfriend);
        boyfriend.resetCharacter();
      }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      boyfriend = parentPlayState?.currentStage?.getBoyfriend(true);
      if (boyfriend != null)
      {
        boyfriend.canPlayOtherAnims = true;
        boyfriend.isDead = true;
        add(boyfriend);
        boyfriend.resetCharacter();
      }
=======
      boyfriend = PlayState.instance.currentStage.getBoyfriend(true);
      boyfriend.canPlayOtherAnims = true;
      boyfriend.isDead = true;
      add(boyfriend);
      boyfriend.resetCharacter();
>>>>>>> cd960b0a (idk7)
    }

    setCameraTarget();

    //
    // Set up the audio
    //

    // The conductor now represents the BPM of the game over music.
    Conductor.instance.update(0);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

    #if mobile
    addBackButton(FlxG.width - 230, FlxG.height - 200, FlxColor.WHITE, goBack);
    #end

    HapticUtil.vibrate(0, Constants.DEFAULT_VIBRATION_DURATION);

    // Allow input a second later to prevent accidental gameover skips.
    new FlxTimer().start(1, function(tmr:FlxTimer) {
      canInput = true;
    });
||||||| parent of 8a1f54ca (lol8)

    #if mobile
    addBackButton(FlxG.width - 230, FlxG.height - 200, FlxColor.WHITE, goBack);
    #end

    HapticUtil.vibrate(0, Constants.DEFAULT_VIBRATION_DURATION);

    // Allow input a second later to prevent accidental gameover skips.
    new FlxTimer().start(1, function(tmr:FlxTimer) {
      canInput = true;
    });
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

    #if mobile
    addBackButton(FlxG.width - 230, FlxG.height - 200, FlxColor.WHITE, goBack);
    #end

    HapticUtil.vibrate(0, Constants.DEFAULT_VIBRATION_DURATION);

    // Allow input a second later to prevent accidental gameover skips.
    new FlxTimer().start(1, function(tmr:FlxTimer) {
      canInput = true;
    });
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

    #if mobile
    addBackButton(FlxG.width - 230, FlxG.height - 200, FlxColor.WHITE, goBack);
    #end

    HapticUtil.vibrate(0, Constants.DEFAULT_VIBRATION_DURATION);

    // Allow input a second later to prevent accidental gameover skips.
    new FlxTimer().start(1, function(tmr:FlxTimer) {
      canInput = true;
    });
=======
>>>>>>> cd960b0a (idk7)
  }

  @:nullSafety(Off)
  function setCameraTarget():Void
  {
    if (PlayState.instance.isMinimalMode || boyfriend == null) return;

    // Assign a camera follow point to the boyfriend's position.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    cameraFollowPoint = new FlxObject(parentPlayState.cameraFollowPoint.x, parentPlayState.cameraFollowPoint.y, 1, 1);
=======
||||||| parent of b150c43d (lol4)
=======

    #if mobile
    addBackButton(FlxG.width - 230, FlxG.height - 200, FlxColor.WHITE, goBack);
    #end

    HapticUtil.vibrate(0, Constants.DEFAULT_VIBRATION_DURATION);

    // Allow input a second later to prevent accidental gameover skips.
    new FlxTimer().start(1, function(tmr:FlxTimer) {
      canInput = true;
    });
>>>>>>> b150c43d (lol4)
  }

  function setCameraTarget():Void
  {
    if (parentPlayState == null || parentPlayState.isMinimalMode || boyfriend == null) return;

    // Assign a camera follow point to the boyfriend's position.
<<<<<<< HEAD
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(parentPlayState.cameraFollowPoint.x, parentPlayState.cameraFollowPoint.y, 1, 1);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    cameraFollowPoint = new FlxObject(parentPlayState.cameraFollowPoint.x, parentPlayState.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(parentPlayState.cameraFollowPoint.x, parentPlayState.cameraFollowPoint.y, 1, 1);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    cameraFollowPoint = new FlxObject(parentPlayState.cameraFollowPoint.x, parentPlayState.cameraFollowPoint.y, 1, 1);
=======
    cameraFollowPoint = new FlxObject(PlayState.instance.cameraFollowPoint.x, PlayState.instance.cameraFollowPoint.y, 1, 1);
>>>>>>> cd960b0a (idk7)
    cameraFollowPoint.x = getMidPointOld(boyfriend).x;
    cameraFollowPoint.y = getMidPointOld(boyfriend).y;
    var offsets:Array<Float> = boyfriend.getDeathCameraOffsets();
    cameraFollowPoint.x += offsets[0];
    cameraFollowPoint.y += offsets[1];
    add(cameraFollowPoint);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    @:nullSafety(Off)
||||||| parent of 8a1f54ca (lol8)
    @:nullSafety(Off)
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    @:nullSafety(Off)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    @:nullSafety(Off)
=======
>>>>>>> cd960b0a (idk7)
    FlxG.camera.target = null;
    FlxG.camera.follow(cameraFollowPoint, LOCKON, Constants.DEFAULT_CAMERA_FOLLOW_RATE / 2);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    targetCameraZoom = (parentPlayState?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
=======
||||||| parent of b150c43d (lol4)
=======
    @:nullSafety(Off)
>>>>>>> b150c43d (lol4)
    FlxG.camera.target = null;
    FlxG.camera.follow(cameraFollowPoint, LOCKON, Constants.DEFAULT_CAMERA_FOLLOW_RATE / 2);
<<<<<<< HEAD
    targetCameraZoom = (PlayState?.instance?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    targetCameraZoom = (PlayState?.instance?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
=======
    targetCameraZoom = (parentPlayState?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    targetCameraZoom = (parentPlayState?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
=======
    targetCameraZoom = (PlayState?.instance?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    targetCameraZoom = (PlayState?.instance?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
=======
    targetCameraZoom = (parentPlayState?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    targetCameraZoom = (parentPlayState?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
=======
    targetCameraZoom = (PlayState?.instance?.currentStage?.camZoom ?? 1.0) * boyfriend.getDeathCameraZoom();
>>>>>>> cd960b0a (idk7)
  }

  /**
   * FlxSprite.getMidpoint(); calculations changed in this git commit
   * https://github.com/HaxeFlixel/flixel/commit/1553b5af0871462fcefedc091b7885437d6c36d2
   * https://github.com/HaxeFlixel/flixel/pull/3125
   *
   * So we use this to do the old math that gets the midpoint of our graphics
   * Luckily, we don't use getGraphicMidpoint() much in the code, so it's fine being in GameoverSubState here.
   * @return FlxPoint
   */
  function getMidPointOld(spr:FlxSprite, ?point:FlxPoint):FlxPoint
  {
    if (point == null) point = FlxPoint.get();
    return point.set(spr.x + spr.frameWidth * 0.5 * spr.scale.x, spr.y + spr.frameHeight * 0.5 * spr.scale.y);
  }

  /**
   * Forcibly reset the camera zoom level to that of the current stage.
   * This prevents camera zoom events from adversely affecting the game over state.
   */
  public function resetCameraZoom():Void
  {
    // Apply camera zoom level from stage data.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    FlxG.camera.zoom = parentPlayState?.currentStage?.camZoom ?? 1.0;
=======
    FlxG.camera.zoom = PlayState?.instance?.currentStage?.camZoom ?? 1.0;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    FlxG.camera.zoom = PlayState?.instance?.currentStage?.camZoom ?? 1.0;
=======
    FlxG.camera.zoom = parentPlayState?.currentStage?.camZoom ?? 1.0;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    FlxG.camera.zoom = parentPlayState?.currentStage?.camZoom ?? 1.0;
=======
    FlxG.camera.zoom = PlayState?.instance?.currentStage?.camZoom ?? 1.0;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    FlxG.camera.zoom = PlayState?.instance?.currentStage?.camZoom ?? 1.0;
=======
    FlxG.camera.zoom = parentPlayState?.currentStage?.camZoom ?? 1.0;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    FlxG.camera.zoom = parentPlayState?.currentStage?.camZoom ?? 1.0;
=======
    FlxG.camera.zoom = PlayState?.instance?.currentStage?.camZoom ?? 1.0;
>>>>>>> cd960b0a (idk7)
  }

  var hasStartedAnimation:Bool = false;

  override function update(elapsed:Float):Void
  {
    if (!hasStartedAnimation)
    {
      hasStartedAnimation = true;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if (boyfriend == null || (parentPlayState?.isMinimalMode ?? true))
=======
      if (boyfriend == null || PlayState.instance.isMinimalMode)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      if (boyfriend == null || PlayState.instance.isMinimalMode)
=======
      if (boyfriend == null || (parentPlayState?.isMinimalMode ?? true))
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      if (boyfriend == null || (parentPlayState?.isMinimalMode ?? true))
=======
      if (boyfriend == null || PlayState.instance.isMinimalMode)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      if (boyfriend == null || PlayState.instance.isMinimalMode)
=======
      if (boyfriend == null || (parentPlayState?.isMinimalMode ?? true))
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      if (boyfriend == null || (parentPlayState?.isMinimalMode ?? true))
=======
      if (boyfriend == null || PlayState.instance.isMinimalMode)
>>>>>>> cd960b0a (idk7)
      {
        // Play the "blue balled" sound. May play a variant if one has been assigned.
        playBlueBalledSFX();
      }
      else
      {
        if (boyfriend.hasAnimation('fakeoutDeath') && FlxG.random.bool((1 / 4096) * 100))
        {
          boyfriend.playAnimation('fakeoutDeath', true, false);
        }
        else
        {
          boyfriend.playAnimation('firstDeath', true, false); // ignoreOther is set to FALSE since you WANT to be able to mash and confirm game over!
          // Play the "blue balled" sound. May play a variant if one has been assigned.
          playBlueBalledSFX();
        }
      }
    }

    // Smoothly lerp the camera
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    FlxG.camera.zoom = MathUtil.smoothLerpPrecision(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
=======
    FlxG.camera.zoom = MathUtil.smoothLerp(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    FlxG.camera.zoom = MathUtil.smoothLerp(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
=======
    FlxG.camera.zoom = MathUtil.smoothLerpPrecision(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    FlxG.camera.zoom = MathUtil.smoothLerpPrecision(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
=======
    FlxG.camera.zoom = MathUtil.smoothLerp(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    FlxG.camera.zoom = MathUtil.smoothLerp(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
=======
    FlxG.camera.zoom = MathUtil.smoothLerpPrecision(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    FlxG.camera.zoom = MathUtil.smoothLerpPrecision(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
=======
    FlxG.camera.zoom = MathUtil.smoothLerp(FlxG.camera.zoom, targetCameraZoom, elapsed, CAMERA_ZOOM_DURATION);
>>>>>>> cd960b0a (idk7)

    //
    // Handle user inputs.
    //

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // Restart the level when pressing the assigned key.
    if ((controls.ACCEPT #if mobile || (TouchUtil.pressAction() && !TouchUtil.overlaps(backButton) && canInput) #end)
      && blueballed
      && !mustNotExit)
=======
    // MOBILE ONLY: Restart the level when tapping Boyfriend.
    if (FlxG.onMobile)
    {
      var touch:FlxTouch = FlxG.touches.getFirst();
      if (touch != null)
      {
        if (boyfriend == null || touch.overlaps(boyfriend))
        {
          confirmDeath();
        }
      }
    }

    // KEYBOARD ONLY: Restart the level when pressing the assigned key.
    if (controls.ACCEPT && blueballed && !mustNotExit)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    // MOBILE ONLY: Restart the level when tapping Boyfriend.
    if (FlxG.onMobile)
    {
      var touch:FlxTouch = FlxG.touches.getFirst();
      if (touch != null)
      {
        if (boyfriend == null || touch.overlaps(boyfriend))
        {
          confirmDeath();
        }
      }
    }

    // KEYBOARD ONLY: Restart the level when pressing the assigned key.
    if (controls.ACCEPT && blueballed && !mustNotExit)
=======
    // Restart the level when pressing the assigned key.
    if ((controls.ACCEPT #if mobile || (TouchUtil.pressAction() && !TouchUtil.overlaps(backButton) && canInput) #end)
      && blueballed
      && !mustNotExit)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // Restart the level when pressing the assigned key.
    if ((controls.ACCEPT #if mobile || (TouchUtil.pressAction() && !TouchUtil.overlaps(backButton) && canInput) #end)
      && blueballed
      && !mustNotExit)
=======
    // MOBILE ONLY: Restart the level when tapping Boyfriend.
    if (FlxG.onMobile)
    {
      var touch:FlxTouch = FlxG.touches.getFirst();
      if (touch != null)
      {
        if (boyfriend == null || touch.overlaps(boyfriend))
        {
          confirmDeath();
        }
      }
    }

    // KEYBOARD ONLY: Restart the level when pressing the assigned key.
    if (controls.ACCEPT && blueballed && !mustNotExit)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    // MOBILE ONLY: Restart the level when tapping Boyfriend.
    if (FlxG.onMobile)
    {
      var touch:FlxTouch = FlxG.touches.getFirst();
      if (touch != null)
      {
        if (boyfriend == null || touch.overlaps(boyfriend))
        {
          confirmDeath();
        }
      }
    }

    // KEYBOARD ONLY: Restart the level when pressing the assigned key.
    if (controls.ACCEPT && blueballed && !mustNotExit)
=======
    // Restart the level when pressing the assigned key.
    if ((controls.ACCEPT #if mobile || (TouchUtil.pressAction() && !TouchUtil.overlaps(backButton) && canInput) #end)
      && blueballed
      && !mustNotExit)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    // Restart the level when pressing the assigned key.
    if ((controls.ACCEPT #if mobile || (TouchUtil.pressAction() && !TouchUtil.overlaps(backButton) && canInput) #end)
      && blueballed
      && !mustNotExit)
=======
    // MOBILE ONLY: Restart the level when tapping Boyfriend.
    if (FlxG.onMobile)
    {
      var touch:FlxTouch = FlxG.touches.getFirst();
      if (touch != null)
      {
        if (boyfriend == null || touch.overlaps(boyfriend))
        {
          confirmDeath();
        }
      }
    }

    // KEYBOARD ONLY: Restart the level when pressing the assigned key.
    if (controls.ACCEPT && blueballed && !mustNotExit)
>>>>>>> cd960b0a (idk7)
    {
      blueballed = false;
      confirmDeath();
    }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (controls.BACK && !mustNotExit && !isEnding) goBack();
=======
    // KEYBOARD ONLY: Return to the menu when pressing the assigned key.
    if (controls.BACK && !mustNotExit && !isEnding)
    {
      isEnding = true;
      blueballed = false;
      PlayState.instance.deathCounter = 0;
      // PlayState.seenCutscene = false; // old thing...
      if (gameOverMusic != null) gameOverMusic.stop();

      if (isChartingMode)
      {
        this.close();
        if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
        PlayState.instance.close(); // This only works because PlayState is a substate!
        return;
      }
      else if (PlayStatePlaylist.isStoryMode)
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> new StoryMenuState(sticker)));
      }
      else
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> FreeplayState.build(sticker)));
      }
    }
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    // KEYBOARD ONLY: Return to the menu when pressing the assigned key.
    if (controls.BACK && !mustNotExit && !isEnding)
    {
      isEnding = true;
      blueballed = false;
      PlayState.instance.deathCounter = 0;
      // PlayState.seenCutscene = false; // old thing...
      if (gameOverMusic != null) gameOverMusic.stop();

      if (isChartingMode)
      {
        this.close();
        if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
        PlayState.instance.close(); // This only works because PlayState is a substate!
        return;
      }
      else if (PlayStatePlaylist.isStoryMode)
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> new StoryMenuState(sticker)));
      }
      else
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> FreeplayState.build(sticker)));
      }
    }
=======
    if (controls.BACK && !mustNotExit && !isEnding) goBack();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (controls.BACK && !mustNotExit && !isEnding) goBack();
=======
    // KEYBOARD ONLY: Return to the menu when pressing the assigned key.
    if (controls.BACK && !mustNotExit && !isEnding)
    {
      isEnding = true;
      blueballed = false;
      PlayState.instance.deathCounter = 0;
      // PlayState.seenCutscene = false; // old thing...
      if (gameOverMusic != null) gameOverMusic.stop();

      if (isChartingMode)
      {
        this.close();
        if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
        PlayState.instance.close(); // This only works because PlayState is a substate!
        return;
      }
      else if (PlayStatePlaylist.isStoryMode)
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> new StoryMenuState(sticker)));
      }
      else
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> FreeplayState.build(sticker)));
      }
    }
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    // KEYBOARD ONLY: Return to the menu when pressing the assigned key.
    if (controls.BACK && !mustNotExit && !isEnding)
    {
      isEnding = true;
      blueballed = false;
      PlayState.instance.deathCounter = 0;
      // PlayState.seenCutscene = false; // old thing...
      if (gameOverMusic != null) gameOverMusic.stop();

      if (isChartingMode)
      {
        this.close();
        if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
        PlayState.instance.close(); // This only works because PlayState is a substate!
        return;
      }
      else if (PlayStatePlaylist.isStoryMode)
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> new StoryMenuState(sticker)));
      }
      else
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> FreeplayState.build(sticker)));
      }
    }
=======
    if (controls.BACK && !mustNotExit && !isEnding) goBack();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (controls.BACK && !mustNotExit && !isEnding) goBack();
=======
    // KEYBOARD ONLY: Return to the menu when pressing the assigned key.
    if (controls.BACK && !mustNotExit && !isEnding)
    {
      isEnding = true;
      blueballed = false;
      PlayState.instance.deathCounter = 0;
      // PlayState.seenCutscene = false; // old thing...
      if (gameOverMusic != null) gameOverMusic.stop();

      if (isChartingMode)
      {
        this.close();
        if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
        PlayState.instance.close(); // This only works because PlayState is a substate!
        return;
      }
      else if (PlayStatePlaylist.isStoryMode)
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> new StoryMenuState(sticker)));
      }
      else
      {
        openSubState(new funkin.ui.transition.StickerSubState(null, (sticker) -> FreeplayState.build(sticker)));
      }
    }
>>>>>>> cd960b0a (idk7)

    if (gameOverMusic != null && gameOverMusic.playing)
    {
      // Match the conductor to the music.
      // This enables the stepHit and beatHit events.
      Conductor.instance.update(gameOverMusic.time);
    }
    else if (boyfriend != null)
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if ((parentPlayState?.isMinimalMode ?? true))
||||||| parent of 8a1f54ca (lol8)
      if ((parentPlayState?.isMinimalMode ?? true))
=======
      if (PlayState.instance.isMinimalMode)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      if (PlayState.instance.isMinimalMode)
=======
      if ((parentPlayState?.isMinimalMode ?? true))
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      if ((parentPlayState?.isMinimalMode ?? true))
=======
      if (PlayState.instance.isMinimalMode)
>>>>>>> cd960b0a (idk7)
      {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        // Do nothing?
=======
      if (PlayState.instance.isMinimalMode)
||||||| parent of b150c43d (lol4)
      if (PlayState.instance.isMinimalMode)
=======
      if ((parentPlayState?.isMinimalMode ?? true))
>>>>>>> b150c43d (lol4)
      {
<<<<<<< HEAD
        // startDeathMusic(1.0, false);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        // startDeathMusic(1.0, false);
=======
        // Do nothing?
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        // Do nothing?
=======
        // startDeathMusic(1.0, false);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        // startDeathMusic(1.0, false);
=======
        // Do nothing?
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        // Do nothing?
=======
        // startDeathMusic(1.0, false);
>>>>>>> cd960b0a (idk7)
      }
      else
      {
        // Music hasn't started yet.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

        if (boyfriend.getDeathQuote() != null)
||||||| parent of 8a1f54ca (lol8)

        if (boyfriend.getDeathQuote() != null)
=======
        switch (PlayStatePlaylist.campaignId)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        switch (PlayStatePlaylist.campaignId)
=======

        if (boyfriend.getDeathQuote() != null)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

        if (boyfriend.getDeathQuote() != null)
=======
        switch (PlayStatePlaylist.campaignId)
>>>>>>> cd960b0a (idk7)
        {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !hasPlayedDeathQuote)
          {
            hasPlayedDeathQuote = true;
            playDeathQuote();
          }
        }
        else
        {
          // Start music at normal volume once the initial death animation finishes.
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
          {
            startDeathMusic(1.0, false);
            boyfriend.playAnimation('deathLoop' + animationSuffix);
          }
=======
        switch (PlayStatePlaylist.campaignId)
||||||| parent of b150c43d (lol4)
        switch (PlayStatePlaylist.campaignId)
=======

        if (boyfriend.getDeathQuote() != null)
>>>>>>> b150c43d (lol4)
        {
<<<<<<< HEAD
          // TODO: Make the behavior for playing Jeff's voicelines generic or un-hardcoded.
          // This will simplify the class and make it easier for mods to add death quotes.
          case 'week7':
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !playingJeffQuote)
            {
              playingJeffQuote = true;
              playJeffQuote();
              // Start music at lower volume
              startDeathMusic(0.2, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
          default:
            // Start music at normal volume once the initial death animation finishes.
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
            {
              startDeathMusic(1.0, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          // TODO: Make the behavior for playing Jeff's voicelines generic or un-hardcoded.
          // This will simplify the class and make it easier for mods to add death quotes.
          case 'week7':
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !playingJeffQuote)
            {
              playingJeffQuote = true;
              playJeffQuote();
              // Start music at lower volume
              startDeathMusic(0.2, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
          default:
            // Start music at normal volume once the initial death animation finishes.
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
            {
              startDeathMusic(1.0, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
=======
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !hasPlayedDeathQuote)
          {
            hasPlayedDeathQuote = true;
            playDeathQuote();
          }
        }
        else
        {
          // Start music at normal volume once the initial death animation finishes.
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
          {
            startDeathMusic(1.0, false);
            boyfriend.playAnimation('deathLoop' + animationSuffix);
          }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !hasPlayedDeathQuote)
          {
            hasPlayedDeathQuote = true;
            playDeathQuote();
          }
        }
        else
        {
          // Start music at normal volume once the initial death animation finishes.
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
          {
            startDeathMusic(1.0, false);
            boyfriend.playAnimation('deathLoop' + animationSuffix);
          }
=======
          // TODO: Make the behavior for playing Jeff's voicelines generic or un-hardcoded.
          // This will simplify the class and make it easier for mods to add death quotes.
          case 'week7':
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !playingJeffQuote)
            {
              playingJeffQuote = true;
              playJeffQuote();
              // Start music at lower volume
              startDeathMusic(0.2, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
          default:
            // Start music at normal volume once the initial death animation finishes.
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
            {
              startDeathMusic(1.0, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          // TODO: Make the behavior for playing Jeff's voicelines generic or un-hardcoded.
          // This will simplify the class and make it easier for mods to add death quotes.
          case 'week7':
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !playingJeffQuote)
            {
              playingJeffQuote = true;
              playJeffQuote();
              // Start music at lower volume
              startDeathMusic(0.2, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
          default:
            // Start music at normal volume once the initial death animation finishes.
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
            {
              startDeathMusic(1.0, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
=======
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !hasPlayedDeathQuote)
          {
            hasPlayedDeathQuote = true;
            playDeathQuote();
          }
        }
        else
        {
          // Start music at normal volume once the initial death animation finishes.
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
          {
            startDeathMusic(1.0, false);
            boyfriend.playAnimation('deathLoop' + animationSuffix);
          }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !hasPlayedDeathQuote)
          {
            hasPlayedDeathQuote = true;
            playDeathQuote();
          }
        }
        else
        {
          // Start music at normal volume once the initial death animation finishes.
          if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
          {
            startDeathMusic(1.0, false);
            boyfriend.playAnimation('deathLoop' + animationSuffix);
          }
=======
          // TODO: Make the behavior for playing Jeff's voicelines generic or un-hardcoded.
          // This will simplify the class and make it easier for mods to add death quotes.
          case 'week7':
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished() && !playingJeffQuote)
            {
              playingJeffQuote = true;
              playJeffQuote();
              // Start music at lower volume
              startDeathMusic(0.2, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
          default:
            // Start music at normal volume once the initial death animation finishes.
            if (boyfriend.getCurrentAnimation().startsWith('firstDeath') && boyfriend.isAnimationFinished())
            {
              startDeathMusic(1.0, false);
              boyfriend.playAnimation('deathLoop' + animationSuffix);
            }
>>>>>>> cd960b0a (idk7)
        }
      }
    }

    // Start death music before firstDeath gets replaced
    super.update(elapsed);
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var deathQuoteSound:Null<FunkinSound> = null;

  function playDeathQuote():Void
  {
    if (isEnding) return;
    if (boyfriend == null) return;
    if (parentPlayState == null) return;

    var deathQuote:Null<String> = boyfriend.getDeathQuote();
    if (deathQuote == null) return;

    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    // Start music at lower volume
    startDeathMusic(0.2, false);
    boyfriend.playAnimation('deathLoop' + animationSuffix);
    deathQuoteSound = FunkinSound.playOnce(deathQuote, function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  var deathQuoteSound:Null<FunkinSound> = null;

  function playDeathQuote():Void
  {
    if (isEnding) return;
    if (boyfriend == null) return;
    if (parentPlayState == null) return;

    var deathQuote:Null<String> = boyfriend.getDeathQuote();
    if (deathQuote == null) return;

    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    // Start music at lower volume
    startDeathMusic(0.2, false);
    boyfriend.playAnimation('deathLoop' + animationSuffix);
    deathQuoteSound = FunkinSound.playOnce(deathQuote, function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var deathQuoteSound:Null<FunkinSound> = null;

  function playDeathQuote():Void
  {
    if (isEnding) return;
    if (boyfriend == null) return;
    if (parentPlayState == null) return;

    var deathQuote:Null<String> = boyfriend.getDeathQuote();
    if (deathQuote == null) return;

    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    // Start music at lower volume
    startDeathMusic(0.2, false);
    boyfriend.playAnimation('deathLoop' + animationSuffix);
    deathQuoteSound = FunkinSound.playOnce(deathQuote, function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  var deathQuoteSound:Null<FunkinSound> = null;

  function playDeathQuote():Void
  {
    if (isEnding) return;
    if (boyfriend == null) return;
    if (parentPlayState == null) return;

    var deathQuote:Null<String> = boyfriend.getDeathQuote();
    if (deathQuote == null) return;

    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    // Start music at lower volume
    startDeathMusic(0.2, false);
    boyfriend.playAnimation('deathLoop' + animationSuffix);
    deathQuoteSound = FunkinSound.playOnce(deathQuote, function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var deathQuoteSound:Null<FunkinSound> = null;

  function playDeathQuote():Void
  {
    if (isEnding) return;
    if (boyfriend == null) return;
    if (parentPlayState == null) return;

    var deathQuote:Null<String> = boyfriend.getDeathQuote();
    if (deathQuote == null) return;

    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    // Start music at lower volume
    startDeathMusic(0.2, false);
    boyfriend.playAnimation('deathLoop' + animationSuffix);
    deathQuoteSound = FunkinSound.playOnce(deathQuote, function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }

=======
>>>>>>> cd960b0a (idk7)
  /**
   * Do behavior which occurs when you confirm and move to restart the level.
   */
  function confirmDeath():Void
  {
    if (!isEnding)
    {
      isEnding = true;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

      // Stop death quotes immediately.
      hasPlayedDeathQuote = true;
      if (deathQuoteSound != null)
      {
        deathQuoteSound.stop();
        deathQuoteSound = null;
      }

||||||| parent of 8a1f54ca (lol8)

      // Stop death quotes immediately.
      hasPlayedDeathQuote = true;
      if (deathQuoteSound != null)
      {
        deathQuoteSound.stop();
        deathQuoteSound = null;
      }

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

      // Stop death quotes immediately.
      hasPlayedDeathQuote = true;
      if (deathQuoteSound != null)
      {
        deathQuoteSound.stop();
        deathQuoteSound = null;
      }

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

      // Stop death quotes immediately.
      hasPlayedDeathQuote = true;
      if (deathQuoteSound != null)
      {
        deathQuoteSound.stop();
        deathQuoteSound = null;
      }

=======
>>>>>>> cd960b0a (idk7)
      startDeathMusic(1.0, true); // isEnding changes this function's behavior.

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
||||||| parent of b150c43d (lol4)
=======

      // Stop death quotes immediately.
      hasPlayedDeathQuote = true;
      if (deathQuoteSound != null)
      {
        deathQuoteSound.stop();
        deathQuoteSound = null;
      }

>>>>>>> b150c43d (lol4)
      startDeathMusic(1.0, true); // isEnding changes this function's behavior.

<<<<<<< HEAD
      if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      if (PlayState.instance.isMinimalMode || boyfriend == null) {}
=======
      if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
      if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      if (PlayState.instance.isMinimalMode || boyfriend == null) {}
=======
      if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
      if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> cd960b0a (idk7)
      else
      {
        boyfriend.playAnimation('deathConfirm' + animationSuffix, true);
      }

      // After the animation finishes...
      new FlxTimer().start(0.7, function(tmr:FlxTimer) {
        // ...fade out the graphics. Then after that happens...

        var resetPlaying = function(pixel:Bool = false) {
          // ...close the GameOverSubState.
          if (pixel) RetroCameraFade.fadeBlack(FlxG.camera, 10, 1);
          else
            FlxG.camera.fade(FlxColor.BLACK, 1, true, null, true);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          if (parentPlayState != null) parentPlayState.needsReset = true;
||||||| parent of 8a1f54ca (lol8)
          if (parentPlayState != null) parentPlayState.needsReset = true;
=======
          PlayState.instance.needsReset = true;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          PlayState.instance.needsReset = true;
=======
          if (parentPlayState != null) parentPlayState.needsReset = true;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          if (parentPlayState != null) parentPlayState.needsReset = true;
=======
          PlayState.instance.needsReset = true;
>>>>>>> cd960b0a (idk7)

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
          PlayState.instance.needsReset = true;
||||||| parent of b150c43d (lol4)
          PlayState.instance.needsReset = true;
=======
          if (parentPlayState != null) parentPlayState.needsReset = true;
>>>>>>> b150c43d (lol4)

<<<<<<< HEAD
          if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          if (PlayState.instance.isMinimalMode || boyfriend == null) {}
=======
          if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
          if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          if (PlayState.instance.isMinimalMode || boyfriend == null) {}
=======
          if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          if ((parentPlayState?.isMinimalMode ?? true) || boyfriend == null) {}
=======
          if (PlayState.instance.isMinimalMode || boyfriend == null) {}
>>>>>>> cd960b0a (idk7)
          else
          {
            // Readd Boyfriend to the stage.
            boyfriend.isDead = false;
            remove(boyfriend);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            parentPlayState?.currentStage?.addCharacter(boyfriend, BF);
=======
            PlayState.instance.currentStage.addCharacter(boyfriend, BF);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
            PlayState.instance.currentStage.addCharacter(boyfriend, BF);
=======
            parentPlayState?.currentStage?.addCharacter(boyfriend, BF);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
            parentPlayState?.currentStage?.addCharacter(boyfriend, BF);
=======
            PlayState.instance.currentStage.addCharacter(boyfriend, BF);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
            PlayState.instance.currentStage.addCharacter(boyfriend, BF);
=======
            parentPlayState?.currentStage?.addCharacter(boyfriend, BF);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
            parentPlayState?.currentStage?.addCharacter(boyfriend, BF);
=======
            PlayState.instance.currentStage.addCharacter(boyfriend, BF);
>>>>>>> cd960b0a (idk7)
          }

          // Snap reset the camera which may have changed because of the player character data.
          resetCameraZoom();

          // Close the substate.
          close();
        };

        if (musicSuffix == '-pixel')
        {
          RetroCameraFade.fadeToBlack(FlxG.camera, 10, 2);
          new FlxTimer().start(2, _ -> {
            FlxG.camera.filters = [];
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying(true);
              });
            }
            else
              resetPlaying(true);
            #else
||||||| parent of b150c43d (lol4)
=======
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying(true);
              });
            }
            else
              resetPlaying(true);
            #else
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying(true);
              });
            }
            else
              resetPlaying(true);
            #else
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying(true);
              });
            }
            else
              resetPlaying(true);
            #else
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying(true);
              });
            }
            else
              resetPlaying(true);
            #else
=======
>>>>>>> cd960b0a (idk7)
            resetPlaying(true);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            #end
=======
            resetPlaying(true);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
            #end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
            #end
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
            #end
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
            #end
=======
>>>>>>> cd960b0a (idk7)
          });
        }
        else
        {
          FlxG.camera.fade(FlxColor.BLACK, 2, false, function() {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying();
              });
            }
            else
              resetPlaying();
            #else
||||||| parent of 8a1f54ca (lol8)
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying();
              });
            }
            else
              resetPlaying();
            #else
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying();
              });
            }
            else
              resetPlaying();
            #else
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying();
              });
            }
            else
              resetPlaying();
            #else
=======
>>>>>>> cd960b0a (idk7)
            resetPlaying();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
            #end
          }, true);
=======
||||||| parent of b150c43d (lol4)
=======
            #if FEATURE_MOBILE_ADVERTISEMENTS
            if (AdMobUtil.PLAYING_COUNTER >= AdMobUtil.MAX_BEFORE_AD)
            {
              AdMobUtil.loadInterstitial(function():Void {
                AdMobUtil.PLAYING_COUNTER = 0;
                resetPlaying();
              });
            }
            else
              resetPlaying();
            #else
>>>>>>> b150c43d (lol4)
            resetPlaying();
<<<<<<< HEAD
          });
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          });
=======
            #end
          }, true);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
            #end
          }, true);
=======
          });
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          });
=======
            #end
          }, true);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
            #end
          }, true);
=======
          });
>>>>>>> cd960b0a (idk7)
        }
      });
    }
  }

  public override function dispatchEvent(event:ScriptEvent):Void
  {
    super.dispatchEvent(event);

    ScriptEventDispatcher.callEvent(boyfriend, event);
  }

  /**
   * Rather than hardcoding stuff, we look for the presence of a music file
   * with the given suffix, and strip it down until we find one that's valid.
   */
  function resolveMusicPath(suffix:String, starting:Bool = false, ending:Bool = false):Null<String>
  {
    var basePath:String = 'gameplay/gameover/gameOver';
    if (ending) basePath += 'End';
    else if (starting) basePath += 'Start';

    var musicPath:String = Paths.music(basePath + suffix);
    while (!Assets.exists(musicPath) && suffix.length > 0)
    {
      suffix = suffix.split('-').slice(0, -1).join('-');
      musicPath = Paths.music(basePath + suffix);
    }
    if (!Assets.exists(musicPath)) return null;
    trace('Resolved music path: ' + musicPath);
    return musicPath;
  }

  /**
   * Starts the death music at the appropriate volume.
   * @param startingVolume The initial volume for the music.
   * @param force Whether or not to force the music to restart.
   */
  public function startDeathMusic(startingVolume:Float = 1, force:Bool = false):Void
  {
    var musicPath:Null<String> = resolveMusicPath(musicSuffix, isStarting, isEnding);
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var onComplete:Void->Void = () -> {};
=======
    var onComplete:() -> Void = () -> {};
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var onComplete:() -> Void = () -> {};
=======
    var onComplete:Void->Void = () -> {};
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var onComplete:Void->Void = () -> {};
=======
    var onComplete:() -> Void = () -> {};
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var onComplete:() -> Void = () -> {};
=======
    var onComplete:Void->Void = () -> {};
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var onComplete:Void->Void = () -> {};
=======
    var onComplete:() -> Void = () -> {};
>>>>>>> cd960b0a (idk7)

    if (isStarting)
    {
      if (musicPath == null)
      {
        // Looked for starting music and didn't find it. Use middle music instead.
        isStarting = false;
        musicPath = resolveMusicPath(musicSuffix, isStarting, isEnding);
      }
      else
      {
        onComplete = function() {
          isStarting = true;
          // We need to force to ensure that the non-starting music plays.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          startDeathMusic(0.0, true);
=======
          startDeathMusic(1.0, true);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          startDeathMusic(1.0, true);
=======
          startDeathMusic(0.0, true);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          startDeathMusic(0.0, true);
=======
          startDeathMusic(1.0, true);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          startDeathMusic(1.0, true);
=======
          startDeathMusic(0.0, true);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          startDeathMusic(0.0, true);
=======
          startDeathMusic(1.0, true);
>>>>>>> cd960b0a (idk7)
        };
      }
    }

    if (musicPath == null)
    {
      FlxG.log.warn('[GAMEOVER] Could not find game over music at path ($musicPath)!');
      return;
    }
    else if (gameOverMusic == null || !gameOverMusic.playing || force)
    {
      if (gameOverMusic != null) gameOverMusic.stop();

      gameOverMusic = FunkinSound.load(musicPath);
      if (gameOverMusic == null) return;

      gameOverMusic.volume = startingVolume;
      gameOverMusic.looped = !(isEnding || isStarting);
      gameOverMusic.onComplete = onComplete;
      gameOverMusic.play();
    }
    else
    {
      @:privateAccess
      trace('Music already playing! ${gameOverMusic?._label}');
    }
  }

  /**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * Pressing BACK from the Game Over screen should return the player to the Story/Freeplay menu as appropriate.
   */
  public function goBack():Void
  {
    if (blueballed == false) return;
    isEnding = true;
    blueballed = false;
    if (parentPlayState != null) parentPlayState.deathCounter = 0;
    // PlayState.seenCutscene = false; // old thing...
    if (gameOverMusic != null) gameOverMusic.stop();

    // Stop death quotes immediately.
    hasPlayedDeathQuote = true;
    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    if (isChartingMode)
    {
      this.close();
      if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
      if (parentPlayState != null) parentPlayState.close(); // This only works because PlayState is a substate!
      parentPlayState = null;
      return;
    }
    else
    {
      var targetState:funkin.ui.transition.stickers.StickerSubState->FlxState = (PlayStatePlaylist.isStoryMode) ? (sticker) ->
        new StoryMenuState(sticker) : (sticker) -> FreeplayState.build(sticker);

      if (PlayStatePlaylist.isStoryMode)
      {
        PlayStatePlaylist.reset();
      }

      var stickerPackId:Null<String> = parentPlayState?.currentChart?.stickerPack;

      if (stickerPackId == null)
      {
        var playerCharacterId:Null<String> = PlayerRegistry.instance.getCharacterOwnerId(parentPlayState?.currentChart?.characters.player);
        var playerCharacter:Null<PlayableCharacter> = PlayerRegistry.instance.fetchEntry(playerCharacterId ?? Constants.DEFAULT_CHARACTER);

        if (playerCharacter != null)
        {
          stickerPackId = playerCharacter.getStickerPackID();
        }
      }

      openSubState(new funkin.ui.transition.stickers.StickerSubState({targetState: targetState, stickerPack: stickerPackId}));
    }
  }

  /**
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
   * Pressing BACK from the Game Over screen should return the player to the Story/Freeplay menu as appropriate.
   */
  public function goBack():Void
  {
    if (blueballed == false) return;
    isEnding = true;
    blueballed = false;
    if (parentPlayState != null) parentPlayState.deathCounter = 0;
    // PlayState.seenCutscene = false; // old thing...
    if (gameOverMusic != null) gameOverMusic.stop();

    // Stop death quotes immediately.
    hasPlayedDeathQuote = true;
    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    if (isChartingMode)
    {
      this.close();
      if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
      if (parentPlayState != null) parentPlayState.close(); // This only works because PlayState is a substate!
      parentPlayState = null;
      return;
    }
    else
    {
      var targetState:funkin.ui.transition.stickers.StickerSubState->FlxState = (PlayStatePlaylist.isStoryMode) ? (sticker) ->
        new StoryMenuState(sticker) : (sticker) -> FreeplayState.build(sticker);

      if (PlayStatePlaylist.isStoryMode)
      {
        PlayStatePlaylist.reset();
      }

      var stickerPackId:Null<String> = parentPlayState?.currentChart?.stickerPack;

      if (stickerPackId == null)
      {
        var playerCharacterId:Null<String> = PlayerRegistry.instance.getCharacterOwnerId(parentPlayState?.currentChart?.characters.player);
        var playerCharacter:Null<PlayableCharacter> = PlayerRegistry.instance.fetchEntry(playerCharacterId ?? Constants.DEFAULT_CHARACTER);

        if (playerCharacter != null)
        {
          stickerPackId = playerCharacter.getStickerPackID();
        }
      }

      openSubState(new funkin.ui.transition.stickers.StickerSubState({targetState: targetState, stickerPack: stickerPackId}));
    }
  }

  /**
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
   * Pressing BACK from the Game Over screen should return the player to the Story/Freeplay menu as appropriate.
   */
  public function goBack():Void
  {
    if (blueballed == false) return;
    isEnding = true;
    blueballed = false;
    if (parentPlayState != null) parentPlayState.deathCounter = 0;
    // PlayState.seenCutscene = false; // old thing...
    if (gameOverMusic != null) gameOverMusic.stop();

    // Stop death quotes immediately.
    hasPlayedDeathQuote = true;
    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    if (isChartingMode)
    {
      this.close();
      if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
      if (parentPlayState != null) parentPlayState.close(); // This only works because PlayState is a substate!
      parentPlayState = null;
      return;
    }
    else
    {
      var targetState:funkin.ui.transition.stickers.StickerSubState->FlxState = (PlayStatePlaylist.isStoryMode) ? (sticker) ->
        new StoryMenuState(sticker) : (sticker) -> FreeplayState.build(sticker);

      if (PlayStatePlaylist.isStoryMode)
      {
        PlayStatePlaylist.reset();
      }

      var stickerPackId:Null<String> = parentPlayState?.currentChart?.stickerPack;

      if (stickerPackId == null)
      {
        var playerCharacterId:Null<String> = PlayerRegistry.instance.getCharacterOwnerId(parentPlayState?.currentChart?.characters.player);
        var playerCharacter:Null<PlayableCharacter> = PlayerRegistry.instance.fetchEntry(playerCharacterId ?? Constants.DEFAULT_CHARACTER);

        if (playerCharacter != null)
        {
          stickerPackId = playerCharacter.getStickerPackID();
        }
      }

      openSubState(new funkin.ui.transition.stickers.StickerSubState({targetState: targetState, stickerPack: stickerPackId}));
    }
  }

  /**
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
   * Pressing BACK from the Game Over screen should return the player to the Story/Freeplay menu as appropriate.
   */
  public function goBack():Void
  {
    if (blueballed == false) return;
    isEnding = true;
    blueballed = false;
    if (parentPlayState != null) parentPlayState.deathCounter = 0;
    // PlayState.seenCutscene = false; // old thing...
    if (gameOverMusic != null) gameOverMusic.stop();

    // Stop death quotes immediately.
    hasPlayedDeathQuote = true;
    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    if (isChartingMode)
    {
      this.close();
      if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
      if (parentPlayState != null) parentPlayState.close(); // This only works because PlayState is a substate!
      parentPlayState = null;
      return;
    }
    else
    {
      var targetState:funkin.ui.transition.stickers.StickerSubState->FlxState = (PlayStatePlaylist.isStoryMode) ? (sticker) ->
        new StoryMenuState(sticker) : (sticker) -> FreeplayState.build(sticker);

      if (PlayStatePlaylist.isStoryMode)
      {
        PlayStatePlaylist.reset();
      }

      var stickerPackId:Null<String> = parentPlayState?.currentChart?.stickerPack;

      if (stickerPackId == null)
      {
        var playerCharacterId:Null<String> = PlayerRegistry.instance.getCharacterOwnerId(parentPlayState?.currentChart?.characters.player);
        var playerCharacter:Null<PlayableCharacter> = PlayerRegistry.instance.fetchEntry(playerCharacterId ?? Constants.DEFAULT_CHARACTER);

        if (playerCharacter != null)
        {
          stickerPackId = playerCharacter.getStickerPackID();
        }
      }

      openSubState(new funkin.ui.transition.stickers.StickerSubState({targetState: targetState, stickerPack: stickerPackId}));
    }
  }

  /**
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
   * Pressing BACK from the Game Over screen should return the player to the Story/Freeplay menu as appropriate.
   */
  public function goBack():Void
  {
    if (blueballed == false) return;
    isEnding = true;
    blueballed = false;
    if (parentPlayState != null) parentPlayState.deathCounter = 0;
    // PlayState.seenCutscene = false; // old thing...
    if (gameOverMusic != null) gameOverMusic.stop();

    // Stop death quotes immediately.
    hasPlayedDeathQuote = true;
    if (deathQuoteSound != null)
    {
      deathQuoteSound.stop();
      deathQuoteSound = null;
    }

    if (isChartingMode)
    {
      this.close();
      if (FlxG.sound.music != null) FlxG.sound.music.pause(); // Don't reset song position!
      if (parentPlayState != null) parentPlayState.close(); // This only works because PlayState is a substate!
      parentPlayState = null;
      return;
    }
    else
    {
      var targetState:funkin.ui.transition.stickers.StickerSubState->FlxState = (PlayStatePlaylist.isStoryMode) ? (sticker) ->
        new StoryMenuState(sticker) : (sticker) -> FreeplayState.build(sticker);

      if (PlayStatePlaylist.isStoryMode)
      {
        PlayStatePlaylist.reset();
      }

      var stickerPackId:Null<String> = parentPlayState?.currentChart?.stickerPack;

      if (stickerPackId == null)
      {
        var playerCharacterId:Null<String> = PlayerRegistry.instance.getCharacterOwnerId(parentPlayState?.currentChart?.characters.player);
        var playerCharacter:Null<PlayableCharacter> = PlayerRegistry.instance.fetchEntry(playerCharacterId ?? Constants.DEFAULT_CHARACTER);

        if (playerCharacter != null)
        {
          stickerPackId = playerCharacter.getStickerPackID();
        }
      }

      openSubState(new funkin.ui.transition.stickers.StickerSubState({targetState: targetState, stickerPack: stickerPackId}));
    }
  }

  /**
=======
>>>>>>> cd960b0a (idk7)
   * Play the sound effect that occurs when
   * boyfriend's testicles get utterly annihilated.
   */
  public static function playBlueBalledSFX():Void
  {
    blueballed = true;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

=======
>>>>>>> cd960b0a (idk7)
    if (Assets.exists(Paths.sound('gameplay/gameover/fnf_loss_sfx' + blueBallSuffix)))
    {
      FunkinSound.playOnce(Paths.sound('gameplay/gameover/fnf_loss_sfx' + blueBallSuffix));
    }
    else
    {
      FlxG.log.error('Missing blue ball sound effect: ' + Paths.sound('gameplay/gameover/fnf_loss_sfx' + blueBallSuffix));
    }
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var hasPlayedDeathQuote:Bool = false;
=======
  var playingJeffQuote:Bool = false;

  /**
   * Week 7-specific hardcoded behavior, to play a custom death quote.
   * TODO: Make this a module somehow.
   */
  function playJeffQuote():Void
  {
    var randomCensor:Array<Int> = [];

    if (!Preferences.naughtyness) randomCensor = [1, 3, 8, 13, 17, 21];

    FunkinSound.playOnce(Paths.sound('jeffGameover/jeffGameover-' + FlxG.random.int(1, 25, randomCensor)), function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  var playingJeffQuote:Bool = false;

  /**
   * Week 7-specific hardcoded behavior, to play a custom death quote.
   * TODO: Make this a module somehow.
   */
  function playJeffQuote():Void
  {
    var randomCensor:Array<Int> = [];

    if (!Preferences.naughtyness) randomCensor = [1, 3, 8, 13, 17, 21];

    FunkinSound.playOnce(Paths.sound('jeffGameover/jeffGameover-' + FlxG.random.int(1, 25, randomCensor)), function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }
=======
  var hasPlayedDeathQuote:Bool = false;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var hasPlayedDeathQuote:Bool = false;
=======
  var playingJeffQuote:Bool = false;

  /**
   * Week 7-specific hardcoded behavior, to play a custom death quote.
   * TODO: Make this a module somehow.
   */
  function playJeffQuote():Void
  {
    var randomCensor:Array<Int> = [];

    if (!Preferences.naughtyness) randomCensor = [1, 3, 8, 13, 17, 21];

    FunkinSound.playOnce(Paths.sound('jeffGameover/jeffGameover-' + FlxG.random.int(1, 25, randomCensor)), function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var playingJeffQuote:Bool = false;

  /**
   * Week 7-specific hardcoded behavior, to play a custom death quote.
   * TODO: Make this a module somehow.
   */
  function playJeffQuote():Void
  {
    var randomCensor:Array<Int> = [];

    if (!Preferences.naughtyness) randomCensor = [1, 3, 8, 13, 17, 21];

    FunkinSound.playOnce(Paths.sound('jeffGameover/jeffGameover-' + FlxG.random.int(1, 25, randomCensor)), function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }
=======
  var hasPlayedDeathQuote:Bool = false;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var hasPlayedDeathQuote:Bool = false;
=======
  var playingJeffQuote:Bool = false;

  /**
   * Week 7-specific hardcoded behavior, to play a custom death quote.
   * TODO: Make this a module somehow.
   */
  function playJeffQuote():Void
  {
    var randomCensor:Array<Int> = [];

    if (!Preferences.naughtyness) randomCensor = [1, 3, 8, 13, 17, 21];

    FunkinSound.playOnce(Paths.sound('jeffGameover/jeffGameover-' + FlxG.random.int(1, 25, randomCensor)), function() {
      // Once the quote ends, fade in the game over music.
      if (!isEnding && gameOverMusic != null)
      {
        gameOverMusic.fadeIn(4, 0.2, 1);
      }
    });
  }
>>>>>>> cd960b0a (idk7)

  public override function destroy():Void
  {
    super.destroy();
    if (gameOverMusic != null)
    {
      gameOverMusic.stop();
      gameOverMusic = null;
    }
    blueballed = false;
    instance = null;
  }

  public override function toString():String
  {
    return 'GameOverSubState';
  }
}

/**
 * Parameters used to instantiate a GameOverSubState.
 */
typedef GameOverParams =
{
  var isChartingMode:Bool;
  var transparent:Bool;
}
