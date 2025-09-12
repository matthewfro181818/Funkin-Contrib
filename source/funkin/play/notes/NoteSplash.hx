package funkin.play.notes;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.play.notes.notestyle.NoteStyle;
||||||| parent of 8a1f54ca (lol8)
import funkin.play.notes.notestyle.NoteStyle;
=======
import funkin.play.notes.NoteDirection;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.play.notes.NoteDirection;
=======
import funkin.play.notes.notestyle.NoteStyle;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.play.notes.notestyle.NoteStyle;
=======
import funkin.play.notes.NoteDirection;
>>>>>>> cd960b0a (idk7)
import flixel.graphics.frames.FlxFramesCollection;
import flixel.FlxG;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.graphics.frames.FlxAtlasFrames;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.graphics.frames.FlxAtlasFrames;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.graphics.frames.FlxAtlasFrames;
>>>>>>> cd960b0a (idk7)
import flixel.FlxSprite;

class NoteSplash extends FlxSprite
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;
||||||| parent of 8a1f54ca (lol8)
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;
=======
  static final ALPHA:Float = 0.6;
  static final FRAMERATE_DEFAULT:Int = 24;
  static final FRAMERATE_VARIANCE:Int = 2;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  static final ALPHA:Float = 0.6;
  static final FRAMERATE_DEFAULT:Int = 24;
  static final FRAMERATE_VARIANCE:Int = 2;
=======
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var splashFramerate:Int = 24;
  public var splashFramerateVariance:Int = 2;
=======
  static final ALPHA:Float = 0.6;
  static final FRAMERATE_DEFAULT:Int = 24;
  static final FRAMERATE_VARIANCE:Int = 2;
>>>>>>> cd960b0a (idk7)

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

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
    this.animation.onFinish.add(this.onAnimationFinished);
=======
    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
=======
    this.animation.onFinish.add(this.onAnimationFinished);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    this.animation.onFinish.add(this.onAnimationFinished);
=======
    this.alpha = ALPHA;
    this.animation.finishCallback = this.onAnimationFinished;
>>>>>>> cd960b0a (idk7)
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function setupSplashGraphic(noteStyle:NoteStyle):Void
||||||| parent of 8a1f54ca (lol8)
  function setupSplashGraphic(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function setup():Void
=======
  function setupSplashGraphic(noteStyle:NoteStyle):Void
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function setupSplashGraphic(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> cd960b0a (idk7)
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
    if (frames == null) noteStyle.buildSplashSprite(this);
=======
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
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
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
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (frames == null) noteStyle.buildSplashSprite(this);
=======
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
>>>>>>> cd960b0a (idk7)

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (variant == null)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }
||||||| parent of 8a1f54ca (lol8)
    if (variant == null)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }
=======
    if (variant == null) variant = FlxG.random.int(1, 2);
>>>>>>> 8a1f54ca (lol8)

<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
    // splashUP0, splashUP1, splashRIGHT0, etc.
    // the animations are processed via `NoteStyle.fetchSplashAnimationData()` in this format
    this.playAnimation('splash${direction.nameUpper}${variant}');
=======
    switch (direction)
||||||| parent of 905084b8 (idk2)
    if (variant == null) variant = FlxG.random.int(1, 2);

    switch (direction)
=======
    if (variant == null)
>>>>>>> 905084b8 (idk2)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }
>>>>>>> 8a1f54ca (lol8)
||||||| parent of cd960b0a (idk7)
    if (variant == null)
    {
      var animationAmount:Int = this.animation.getAnimationList().filter(function(anim) return anim.name.startsWith('splash${direction.nameUpper}')).length
        - 1;
      variant = FlxG.random.int(0, animationAmount);
    }
=======
    if (variant == null) variant = FlxG.random.int(1, 2);
>>>>>>> cd960b0a (idk7)

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

    if (animation.curAnim == null) return;

    // Vary the speed of the animation a bit.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
=======
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
=======
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    animation.curAnim.frameRate = splashFramerate + FlxG.random.int(-splashFramerateVariance, splashFramerateVariance);
=======
    animation.curAnim.frameRate = FRAMERATE_DEFAULT + FlxG.random.int(-FRAMERATE_VARIANCE, FRAMERATE_VARIANCE);
>>>>>>> cd960b0a (idk7)

    // Center the animation on the note splash.
    offset.set(width * 0.3, height * 0.3);
  }

  public function onAnimationFinished(animationName:String):Void
  {
    // *lightning* *zap* *crackle*
    this.kill();
  }
}
