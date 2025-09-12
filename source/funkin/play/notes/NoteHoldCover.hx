package funkin.play.notes;

import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.play.notes.NoteDirection;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.play.notes.NoteDirection;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import funkin.play.notes.NoteDirection;
>>>>>>> cd960b0a (idk7)
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxSprite;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.play.notes.notestyle.NoteStyle;
=======
import funkin.play.notes.NoteDirection;
||||||| parent of b150c43d (lol4)
import funkin.play.notes.NoteDirection;
=======
>>>>>>> b150c43d (lol4)
||||||| cf89d672
=======
import funkin.play.notes.NoteDirection;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxSprite;
<<<<<<< HEAD
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
||||||| parent of 905084b8 (idk2)
=======
import funkin.play.notes.notestyle.NoteStyle;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.play.notes.notestyle.NoteStyle;
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
import funkin.play.notes.notestyle.NoteStyle;
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

class NoteHoldCover extends FlxTypedSpriteGroup<FlxSprite>
{
  static final FRAMERATE_DEFAULT:Int = 24;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
  static var glowFrames:FlxFramesCollection;

>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  static var glowFrames:FlxFramesCollection;

=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
  static var glowFrames:FlxFramesCollection;

>>>>>>> cd960b0a (idk7)
  public var holdNote:SustainTrail;

  var glow:FlxSprite;
  var sparks:FlxSprite;

  public function new()
  {
    super(0, 0);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    setupHoldNoteCover(noteStyle);
=======
  static var glowFrames:FlxFramesCollection;

||||||| parent of b150c43d (lol4)
  static var glowFrames:FlxFramesCollection;

=======
>>>>>>> b150c43d (lol4)
||||||| cf89d672
=======
  static var glowFrames:FlxFramesCollection;

>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  public var holdNote:SustainTrail;

  var glow:FlxSprite;
  var sparks:FlxSprite;

  public function new()
  {
    super(0, 0);

<<<<<<< HEAD
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
||||||| parent of 905084b8 (idk2)
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
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
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
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
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
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
||||||| parent of 8a1f54ca (lol8)
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function setup():Void
=======
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> cd960b0a (idk7)
  {
    glow = new FlxSprite();
    add(glow);
    if (glowFrames == null) preloadFrames();
    glow.frames = glowFrames;

    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    glow.animation.onFinish.add(this.onAnimationFinished);
=======
  function setup():Void
||||||| parent of b150c43d (lol4)
  function setup():Void
=======
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
>>>>>>> b150c43d (lol4)
||||||| cf89d672
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
=======
  function setup():Void
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    glow = new FlxSprite();
    add(glow);
    if (glowFrames == null) preloadFrames();
    glow.frames = glowFrames;

    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

<<<<<<< HEAD
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
||||||| parent of 905084b8 (idk2)
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
=======
    glow.animation.onFinish.add(this.onAnimationFinished);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    glow.animation.onFinish.add(this.onAnimationFinished);
=======
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    glow.animation.onFinish.add(this.onAnimationFinished);
=======
      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
||||||| parent of 905084b8 (idk2)
=======
    holdNote.cover = null;

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    holdNote.cover = null;

=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    holdNote.cover = null;

=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
