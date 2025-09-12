package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

/**
 * Note... not actually gaussian!
 */
<<<<<<< HEAD
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
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
class GaussianBlurShader extends FlxRuntimeShader
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 8a1f54ca (lol8)
  public var amount:Float = 1;
=======
  public var amount:Float;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var amount:Float;
=======
  public var amount:Float = 1;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var amount:Float = 1;
=======
  public var amount:Float;
>>>>>>> cd960b0a (idk7)

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
