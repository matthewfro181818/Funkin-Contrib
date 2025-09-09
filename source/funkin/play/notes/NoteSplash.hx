package funkin.play.notes;

<<<<<<< HEAD
import funkin.play.notes.notestyle.NoteStyle;
import flixel.graphics.frames.FlxFramesCollection;
import flixel.FlxG;
=======
import funkin.play.notes.NoteDirection;
import flixel.graphics.frames.FlxFramesCollection;
import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
>>>>>>> e11c5f8d (Add files via upload)
import flixel.FlxSprite;

class NoteSplash extends FlxSprite
{
<<<<<<< HEAD
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;

  static var frameCollection:FlxFramesCollection;

  public function new(noteStyle:NoteStyle)
  {
    super(0, 0);

    setupSplashGraphic(noteStyle);

    this.animation.onFinish.add(this.onAnimationFinished);
=======
  static final ALPHA:Float = 0.6;
  static final FRAMERATE_DEFAULT:Int = 24;
  static final FRAMERATE_VARIANCE:Int = 2;

  static var frameCollection:FlxFramesCollection;

  public static function preloadFrames():Void
  {
    frameCollection = Paths.getSparrowAtlas('noteSplashes');
    frameCollection.parent.persist = true;
  }

  public function new()
  {
    super(0, 0);

    setup();

    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
>>>>>>> e11c5f8d (Add files via upload)
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
  function setupSplashGraphic(noteStyle:NoteStyle):Void
  {
    if (frames == null) noteStyle.buildSplashSprite(this);
=======
  function setup():Void
  {
    if (frameCollection?.parent?.isDestroyed ?? false) frameCollection = null;
    if (frameCollection == null) preloadFrames();

    this.frames = frameCollection;

    this.animation.addByPrefix('splash1Left', 'note impact 1 purple0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash1Down', 'note impact 1  blue0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash1Up', 'note impact 1 green0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash1Right', 'note impact 1 red0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash2Left', 'note impact 2 purple0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash2Down', 'note impact 2 blue0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash2Up', 'note impact 2 green0', FRAMERATE_DEFAULT, false, false, false);
    this.animation.addByPrefix('splash2Right', 'note impact 2 red0', FRAMERATE_DEFAULT, false, false, false);
>>>>>>> e11c5f8d (Add files via upload)

    if (this.animation.getAnimationList().length < 8)
    {
      trace('WARNING: NoteSplash failed to initialize all animations.');
    }
  }

  public function playAnimation(name:String, force:Bool = false, reversed:Bool = false, startFrame:Int = 0):Void
  {
    this.animation.play(name, force, reversed, startFrame);
  }

  public function play(direction:NoteDirection, variant:Int = null):Void
  {
<<<<<<< HEAD
    if (variant == null)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }

    // splashUP0, splashUP1, splashRIGHT0, etc.
    // the animations are processed via `NoteStyle.fetchSplashAnimationData()` in this format
    this.playAnimation('splash${direction.nameUpper}${variant}');
=======
    if (variant == null) variant = FlxG.random.int(1, 2);

    switch (direction)
    {
      case NoteDirection.LEFT:
        this.playAnimation('splash${variant}Left');
      case NoteDirection.DOWN:
        this.playAnimation('splash${variant}Down');
      case NoteDirection.UP:
        this.playAnimation('splash${variant}Up');
      case NoteDirection.RIGHT:
        this.playAnimation('splash${variant}Right');
    }
>>>>>>> e11c5f8d (Add files via upload)

    if (animation.curAnim == null) return;

    // Vary the speed of the animation a bit.
<<<<<<< HEAD
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
=======
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
>>>>>>> e11c5f8d (Add files via upload)

    // Center the animation on the note splash.
    offset.set(width * 0.3, height * 0.3);
  }

  public function onAnimationFinished(animationName:String):Void
  {
    // *lightning* *zap* *crackle*
    this.kill();
  }
}
