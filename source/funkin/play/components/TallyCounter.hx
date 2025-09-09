package funkin.play.components;

import flixel.FlxSprite;
<<<<<<< HEAD
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
=======
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
>>>>>>> e11c5f8d (Add files via upload)
import flixel.text.FlxText.FlxTextAlign;
import funkin.util.MathUtil;

/**
 * Numerical counters used next to each judgement in the Results screen.
 */
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
class TallyCounter extends FlxTypedSpriteGroup<FlxSprite>
{
  public var curNumber:Float = 0;
  public var neededNumber:Int = 0;

  public var flavour:Int = 0xFFFFFFFF;

  public var align:FlxTextAlign = FlxTextAlign.LEFT;

<<<<<<< HEAD
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> e11c5f8d (Add files via upload)
  {
    super(x, y);

    this.align = align;

<<<<<<< HEAD
    this.flavour = flavour ?? 0xFFFFFFFF;
=======
    this.flavour = flavour;
>>>>>>> e11c5f8d (Add files via upload)

    this.neededNumber = neededNumber;

    if (curNumber == neededNumber) drawNumbers();
  }

  var tmr:Float = 0;

  override function update(elapsed:Float)
  {
    super.update(elapsed);

    if (curNumber < neededNumber) drawNumbers();
  }

  function drawNumbers()
  {
    var seperatedScore:Array<Int> = [];
    var tempCombo:Int = Math.round(curNumber);

    var fullNumberDigits:Int = Std.int(Math.max(1, Math.ceil(MathUtil.logBase(10, neededNumber))));

    while (tempCombo != 0)
    {
      seperatedScore.push(tempCombo % 10);
      tempCombo = Math.floor(tempCombo / 10);
    }

    if (seperatedScore.length == 0) seperatedScore.push(0);

    seperatedScore.reverse();

    for (ind => num in seperatedScore)
    {
      if (ind >= members.length)
      {
        var xPos = ind * (43 * this.scale.x);
        if (this.align == FlxTextAlign.RIGHT)
        {
          xPos -= (fullNumberDigits * (43 * this.scale.x));
        }
        var numb:TallyNumber = new TallyNumber(xPos, 0, num);
        numb.scale.set(this.scale.x, this.scale.y);
        add(numb);
        numb.color = flavour;
      }
      else
      {
        members[ind].animation.play(Std.string(num));
        members[ind].color = flavour;
      }
    }
  }
}

<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
class TallyNumber extends FlxSprite
{
  public function new(x:Float, y:Float, digit:Int)
  {
    super(x, y);

    frames = Paths.getSparrowAtlas("resultScreen/tallieNumber");

    for (i in 0...10)
      animation.addByPrefix(Std.string(i), i + " small", 24, false);

    animation.play(Std.string(digit));
    updateHitbox();
  }
}
