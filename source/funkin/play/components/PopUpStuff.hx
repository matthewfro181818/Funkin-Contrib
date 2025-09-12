package funkin.play.components;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.FlxSprite;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.FlxSprite;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.FlxSprite;
>>>>>>> cd960b0a (idk7)
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.tweens.FlxTween;
import flixel.util.FlxDirection;
import funkin.graphics.FunkinSprite;
import funkin.play.PlayState;
import funkin.util.TimerUtil;
import funkin.util.EaseUtil;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.FlxSprite;
||||||| parent of b150c43d (lol4)
import flixel.FlxSprite;
=======
>>>>>>> b150c43d (lol4)
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.tweens.FlxTween;
import funkin.graphics.FunkinSprite;
import funkin.util.EaseUtil;
<<<<<<< HEAD
import funkin.data.notestyle.NoteStyleRegistry;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.data.notestyle.NoteStyleRegistry;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.data.notestyle.NoteStyleRegistry;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.data.notestyle.NoteStyleRegistry;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import funkin.data.notestyle.NoteStyleRegistry;
>>>>>>> cd960b0a (idk7)
import funkin.play.notes.notestyle.NoteStyle;

@:nullSafety
class PopUpStuff extends FlxTypedGroup<FunkinSprite>
{
  /**
   * The current note style to use. This determines which graphics to display.
   * For example, Week 6 uses the `pixel` note style, and mods can create their own.
   */
  var noteStyle:NoteStyle;

  /**
   * Offsets that are applied to all elements, independent of the note style.
   * Used to allow scripts to reposition the elements.
   */
  var offsets:Array<Int> = [0, 0];

  override public function new(noteStyle:NoteStyle)
  {
    super();

    this.noteStyle = noteStyle;
  }

  public function displayRating(daRating:Null<String>)
  {
    if (daRating == null) daRating = "good";

    var rating:Null<FunkinSprite> = noteStyle.buildJudgementSprite(daRating);
    if (rating == null) return;

    rating.zIndex = 1000;

    rating.x = (FlxG.width * 0.474);
    rating.x -= rating.width / 2;
    rating.y = (FlxG.camera.height * 0.45 - 60);
    rating.y -= rating.height / 2;

    rating.x += offsets[0];
    rating.y += offsets[1];
    var styleOffsets = noteStyle.getJudgementSpriteOffsets(daRating);
    rating.x += styleOffsets[0];
    rating.y += styleOffsets[1];

    rating.acceleration.y = 550;
    rating.velocity.y -= FlxG.random.int(140, 175);
    rating.velocity.x -= FlxG.random.int(0, 10);

    add(rating);

    var fadeEase = noteStyle.isJudgementSpritePixel(daRating) ? EaseUtil.stepped(2) : null;

    FlxTween.tween(rating, {alpha: 0}, 0.2,
      {
        onComplete: function(tween:FlxTween) {
          remove(rating, true);
          rating.destroy();
        },
        startDelay: Conductor.instance.beatLengthMs * 0.001,
        ease: fadeEase
      });
  }

  public function displayCombo(combo:Int = 0):Void
  {
    var seperatedScore:Array<Int> = [];
    var tempCombo:Int = combo;

    while (tempCombo != 0)
    {
      seperatedScore.push(tempCombo % 10);
      tempCombo = Std.int(tempCombo / 10);
    }
    while (seperatedScore.length < 3)
      seperatedScore.push(0);

    // seperatedScore.reverse();

    var daLoop:Int = 1;
    for (digit in seperatedScore)
    {
      var numScore:Null<FunkinSprite> = noteStyle.buildComboNumSprite(digit);
      if (numScore == null) continue;

      numScore.x = (FlxG.width * 0.507) - (36 * daLoop) - 65;
      numScore.y = (FlxG.camera.height * 0.44);

      numScore.x += offsets[0];
      numScore.y += offsets[1];
      var styleOffsets = noteStyle.getComboNumSpriteOffsets(digit);
      numScore.x += styleOffsets[0];
      numScore.y += styleOffsets[1];

      numScore.acceleration.y = FlxG.random.int(250, 300);
      numScore.velocity.y -= FlxG.random.int(130, 150);
      numScore.velocity.x = FlxG.random.float(-5, 5);

      add(numScore);

      var fadeEase = noteStyle.isComboNumSpritePixel(digit) ? EaseUtil.stepped(2) : null;

      FlxTween.tween(numScore, {alpha: 0}, 0.2,
        {
          onComplete: function(tween:FlxTween) {
            remove(numScore, true);
            numScore.destroy();
          },
          startDelay: Conductor.instance.beatLengthMs * 0.002,
          ease: fadeEase
        });

      daLoop++;
    }
  }
}
