package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

/**
 * Create a little dotting effect.
 */
<<<<<<< HEAD
@:nullSafety
class InverseDotsShader extends FlxRuntimeShader
{
  public var amount:Float = 0;
=======
class InverseDotsShader extends FlxRuntimeShader
{
  public var amount:Float;
>>>>>>> e11c5f8d (Add files via upload)

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
