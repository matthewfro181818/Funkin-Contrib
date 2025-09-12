package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

/**
 * Create a little dotting effect.
 */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
class InverseDotsShader extends FlxRuntimeShader
{
<<<<<<< HEAD
<<<<<<< HEAD
  public var amount:Float = 0;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class InverseDotsShader extends FlxRuntimeShader
{
<<<<<<< HEAD
  public var amount:Float;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var amount:Float;
=======
  public var amount:Float = 0;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var amount:Float = 0;
=======
  public var amount:Float;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var amount:Float;
=======
  public var amount:Float = 0;
>>>>>>> 905084b8 (idk2)

  public function new(amount:Float = 1.0)
  {
    super(Assets.getText(Paths.frag("InverseDots")));
    setAmount(amount);
  }

  public function setAmount(value:Float):Void
  {
    this.amount = value;
    this.setFloat("_amount", amount);
  }
}
