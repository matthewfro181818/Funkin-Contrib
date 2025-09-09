package funkin.play.notes;

<<<<<<< HEAD
<<<<<<< HEAD
import funkin.play.notes.notestyle.NoteStyle;
import flixel.graphics.frames.FlxFramesCollection;
import flixel.FlxG;
=======
import funkin.play.notes.NoteDirection;
||||||| parent of b150c43d (lol4)
import funkin.play.notes.NoteDirection;
=======
import funkin.play.notes.notestyle.NoteStyle;
>>>>>>> b150c43d (lol4)
import flixel.graphics.frames.FlxFramesCollection;
import flixel.FlxG;
<<<<<<< HEAD
import flixel.graphics.frames.FlxAtlasFrames;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.graphics.frames.FlxAtlasFrames;
=======
>>>>>>> b150c43d (lol4)
import flixel.FlxSprite;

class NoteSplash extends FlxSprite
{
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)
  static final ALPHA:Float = 0.6;
  static final FRAMERATE_DEFAULT:Int = 24;
  static final FRAMERATE_VARIANCE:Int = 2;
=======
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;
>>>>>>> b150c43d (lol4)

  static var frameCollection:FlxFramesCollection;

  public function new(noteStyle:NoteStyle)
  {
    super(0, 0);

    setupSplashGraphic(noteStyle);

<<<<<<< HEAD
    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
=======
    this.animation.onFinish.add(this.onAnimationFinished);
>>>>>>> b150c43d (lol4)
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
<<<<<<< HEAD
  function setupSplashGraphic(noteStyle:NoteStyle):Void
  {
    if (frames == null) noteStyle.buildSplashSprite(this);
=======
  function setup():Void
||||||| parent of b150c43d (lol4)
  function setup():Void
=======
  function setupSplashGraphic(noteStyle:NoteStyle):Void
>>>>>>> b150c43d (lol4)
  {
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)
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
=======
    if (frames == null) noteStyle.buildSplashSprite(this);
>>>>>>> b150c43d (lol4)

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
||||||| parent of b150c43d (lol4)
    if (variant == null) variant = FlxG.random.int(1, 2);

    switch (direction)
=======
    if (variant == null)
>>>>>>> b150c43d (lol4)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }
>>>>>>> e11c5f8d (Add files via upload)

    // splashUP0, splashUP1, splashRIGHT0, etc.
    // the animations are processed via `NoteStyle.fetchSplashAnimationData()` in this format
    this.playAnimation('splash${direction.nameUpper}${variant}');

    if (animation.curAnim == null) return;

    // Vary the speed of the animation a bit.
<<<<<<< HEAD
<<<<<<< HEAD
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
=======
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
=======
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
>>>>>>> b150c43d (lol4)

    // Center the animation on the note splash.
    offset.set(width * 0.3, height * 0.3);
  }

  public function onAnimationFinished(animationName:String):Void
  {
    // *lightning* *zap* *crackle*
    this.kill();
  }
}
