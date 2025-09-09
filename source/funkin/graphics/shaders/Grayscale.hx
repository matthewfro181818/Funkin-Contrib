package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;

<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class Grayscale extends FlxRuntimeShader
{
  public var amount:Float = 1;

  public function new(amount:Float = 1)
  {
    super(Assets.getText(Paths.frag("grayscale")));
    setAmount(amount);
  }

  public function setAmount(value:Float):Void
  {
    amount = value;
    this.setFloat("_amount", amount);
  }
}
