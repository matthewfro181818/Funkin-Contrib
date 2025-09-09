package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

/**
 * Create a little dotting effect.
 */
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
class InverseDotsShader extends FlxRuntimeShader
{
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
