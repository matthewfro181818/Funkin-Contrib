package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

/**
 * Note... not actually gaussian!
 */
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
class GaussianBlurShader extends FlxRuntimeShader
{
  public var amount:Float = 1;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class GaussianBlurShader extends FlxRuntimeShader
{
<<<<<<< HEAD
  public var amount:Float;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var amount:Float;
=======
  public var amount:Float = 1;
>>>>>>> b150c43d (lol4)

  public function new(amount:Float = 1.0)
  {
    super(Assets.getText(Paths.frag("gaussianBlur")));
    setAmount(amount);
  }

  public function setAmount(value:Float):Void
  {
    this.amount = value;
    this.setFloat("_amount", amount);
  }
}
