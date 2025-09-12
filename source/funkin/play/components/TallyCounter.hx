package funkin.play.components;

import flixel.FlxSprite;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.group.FlxGroup.FlxTypedGroup;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.group.FlxGroup.FlxTypedGroup;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.group.FlxGroup.FlxTypedGroup;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import flixel.group.FlxGroup.FlxTypedGroup;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.group.FlxGroup.FlxTypedGroup;
||||||| parent of b150c43d (lol4)
import flixel.group.FlxGroup.FlxTypedGroup;
=======
>>>>>>> b150c43d (lol4)
import flixel.group.FlxSpriteGroup.FlxTypedSpriteGroup;
<<<<<<< HEAD
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import flixel.math.FlxMath;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.text.FlxText.FlxTextAlign;
import funkin.util.MathUtil;

/**
 * Numerical counters used next to each judgement in the Results screen.
 */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
class TallyCounter extends FlxTypedSpriteGroup<FlxSprite>
{
  public var curNumber:Float = 0;
  public var neededNumber:Int = 0;

  public var flavour:Int = 0xFFFFFFFF;

  public var align:FlxTextAlign = FlxTextAlign.LEFT;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int, align:FlxTextAlign = FlxTextAlign.LEFT)
=======
  public function new(x:Float, y:Float, neededNumber:Int = 0, ?flavour:Int = 0xFFFFFFFF, align:FlxTextAlign = FlxTextAlign.LEFT)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    super(x, y);

    this.align = align;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    this.flavour = flavour ?? 0xFFFFFFFF;
=======
    this.flavour = flavour;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    this.flavour = flavour;
=======
    this.flavour = flavour ?? 0xFFFFFFFF;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    this.flavour = flavour ?? 0xFFFFFFFF;
=======
    this.flavour = flavour;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    this.flavour = flavour;
=======
    this.flavour = flavour ?? 0xFFFFFFFF;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    this.flavour = flavour ?? 0xFFFFFFFF;
=======
    this.flavour = flavour;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    this.flavour = flavour ?? 0xFFFFFFFF;
=======
    this.flavour = flavour;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
