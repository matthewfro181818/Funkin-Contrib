package funkin.play.notes;

import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.play.notes.NoteDirection;
>>>>>>> 8a1f54ca (lol8)
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxSprite;
<<<<<<< HEAD
import funkin.play.notes.notestyle.NoteStyle;
=======
import funkin.play.notes.NoteDirection;
||||||| parent of b150c43d (lol4)
import funkin.play.notes.NoteDirection;
=======
>>>>>>> b150c43d (lol4)
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxSprite;
<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
import funkin.play.notes.notestyle.NoteStyle;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.play.notes.notestyle.NoteStyle;
=======
>>>>>>> 8a1f54ca (lol8)

class NoteHoldCover extends FlxTypedSpriteGroup<FlxSprite>
{
  static final FRAMERATE_DEFAULT:Int = 24;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
  static var glowFrames:FlxFramesCollection;

>>>>>>> 8a1f54ca (lol8)
  public var holdNote:SustainTrail;

  var glow:FlxSprite;
  var sparks:FlxSprite;

  public function new()
  {
    super(0, 0);

<<<<<<< HEAD
    setupHoldNoteCover(noteStyle);
=======
  static var glowFrames:FlxFramesCollection;

||||||| parent of b150c43d (lol4)
  static var glowFrames:FlxFramesCollection;

=======
>>>>>>> b150c43d (lol4)
  public var holdNote:SustainTrail;

  public var glow:FlxSprite;

  var sparks:FlxSprite;

  public function new(noteStyle:NoteStyle)
  {
    super(0, 0);

<<<<<<< HEAD
    setup();
  }

  public static function preloadFrames():Void
  {
    glowFrames = null;
    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

      var atlas:FlxFramesCollection = Paths.getSparrowAtlas('holdCover${directionName}');
      atlas.parent.persist = true;

      if (glowFrames != null)
      {
        glowFrames = FlxAnimationUtil.combineFramesCollections(glowFrames, atlas);
      }
      else
      {
        glowFrames = atlas;
      }
    }
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    setup();
  }

  public static function preloadFrames():Void
  {
    glowFrames = null;
    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

      var atlas:FlxFramesCollection = Paths.getSparrowAtlas('holdCover${directionName}');
      atlas.parent.persist = true;

      if (glowFrames != null)
      {
        glowFrames = FlxAnimationUtil.combineFramesCollections(glowFrames, atlas);
      }
      else
      {
        glowFrames = atlas;
      }
    }
=======
    setupHoldNoteCover(noteStyle);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    setupHoldNoteCover(noteStyle);
=======
    setup();
  }

  public static function preloadFrames():Void
  {
    glowFrames = null;
    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

      var atlas:FlxFramesCollection = Paths.getSparrowAtlas('holdCover${directionName}');
      atlas.parent.persist = true;

      if (glowFrames != null)
      {
        glowFrames = FlxAnimationUtil.combineFramesCollections(glowFrames, atlas);
      }
      else
      {
        glowFrames = atlas;
      }
    }
>>>>>>> 8a1f54ca (lol8)
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
||||||| parent of 8a1f54ca (lol8)
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> 8a1f54ca (lol8)
  {
    glow = new FlxSprite();
    add(glow);
    if (glowFrames == null) preloadFrames();
    glow.frames = glowFrames;

    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

<<<<<<< HEAD
    glow.animation.onFinish.add(this.onAnimationFinished);
=======
  function setup():Void
||||||| parent of b150c43d (lol4)
  function setup():Void
=======
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
>>>>>>> b150c43d (lol4)
  {
    glow = new FlxSprite();
    add(glow);

    // TODO: null check here like how NoteSplash does
    noteStyle.buildHoldCoverSprite(this);

<<<<<<< HEAD
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
=======
    glow.animation.onFinish.add(this.onAnimationFinished);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    glow.animation.onFinish.add(this.onAnimationFinished);
=======
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
>>>>>>> 8a1f54ca (lol8)

    if (glow.animation.getAnimationList().length < 3 * 4)
    {
      trace('WARNING: NoteHoldCover failed to initialize all animations.');
    }
  }

  public override function update(elapsed):Void
  {
    super.update(elapsed);
  }

  public function playStart():Void
  {
    var direction:NoteDirection = holdNote.noteDirection;
    glow.animation.play('holdCoverStart${direction.colorName.toTitleCase()}');
  }

  public function playContinue():Void
  {
    var direction:NoteDirection = holdNote.noteDirection;
    glow.animation.play('holdCover${direction.colorName.toTitleCase()}');
  }

  public function playEnd():Void
  {
    var direction:NoteDirection = holdNote.noteDirection;
    glow.animation.play('holdCoverEnd${direction.colorName.toTitleCase()}');
  }

  public override function kill():Void
  {
    super.kill();

    this.visible = false;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    holdNote.cover = null;

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    holdNote.cover = null;

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    holdNote.cover = null;

=======
>>>>>>> 8a1f54ca (lol8)
    if (glow != null) glow.visible = false;
    if (sparks != null) sparks.visible = false;
  }

  public override function revive():Void
  {
    super.revive();

    this.visible = true;
    this.alpha = 1.0;

    if (glow != null) glow.visible = true;
    if (sparks != null) sparks.visible = true;
  }

  public function onAnimationFinished(animationName:String):Void
  {
    if (animationName.startsWith('holdCoverStart'))
    {
      playContinue();
    }
    if (animationName.startsWith('holdCoverEnd'))
    {
      // *lightning* *zap* *crackle*
      this.visible = false;
      this.kill();
    }
  }
}
