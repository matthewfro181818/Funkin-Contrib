package funkin.play.notes;

import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
<<<<<<< HEAD
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxSprite;
import funkin.play.notes.notestyle.NoteStyle;
=======
import funkin.play.notes.NoteDirection;
import flixel.graphics.frames.FlxFramesCollection;
import funkin.util.assets.FlxAnimationUtil;
import flixel.FlxG;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.FlxSprite;
>>>>>>> e11c5f8d (Add files via upload)

class NoteHoldCover extends FlxTypedSpriteGroup<FlxSprite>
{
  static final FRAMERATE_DEFAULT:Int = 24;

<<<<<<< HEAD
  public var holdNote:SustainTrail;

  public var glow:FlxSprite;

  var sparks:FlxSprite;

  public function new(noteStyle:NoteStyle)
  {
    super(0, 0);

    setupHoldNoteCover(noteStyle);
=======
  static var glowFrames:FlxFramesCollection;

  public var holdNote:SustainTrail;

  var glow:FlxSprite;
  var sparks:FlxSprite;

  public function new()
  {
    super(0, 0);

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
  }

  /**
   * Add ALL the animations to this sprite. We will recycle and reuse the FlxSprite multiple times.
   */
<<<<<<< HEAD
  function setupHoldNoteCover(noteStyle:NoteStyle):Void
  {
    glow = new FlxSprite();
    add(glow);

    // TODO: null check here like how NoteSplash does
    noteStyle.buildHoldCoverSprite(this);

    glow.animation.onFinish.add(this.onAnimationFinished);
=======
  function setup():Void
  {
    glow = new FlxSprite();
    add(glow);
    if (glowFrames == null) preloadFrames();
    glow.frames = glowFrames;

    for (direction in Strumline.DIRECTIONS)
    {
      var directionName = direction.colorName.toTitleCase();

      glow.animation.addByPrefix('holdCoverStart$directionName', 'holdCoverStart${directionName}0', FRAMERATE_DEFAULT, false, false, false);
      glow.animation.addByPrefix('holdCover$directionName', 'holdCover${directionName}0', FRAMERATE_DEFAULT, true, false, false);
      glow.animation.addByPrefix('holdCoverEnd$directionName', 'holdCoverEnd${directionName}0', FRAMERATE_DEFAULT, false, false, false);
    }

    glow.animation.finishCallback = this.onAnimationFinished;
>>>>>>> e11c5f8d (Add files via upload)

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
    holdNote.cover = null;

=======
>>>>>>> e11c5f8d (Add files via upload)
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
