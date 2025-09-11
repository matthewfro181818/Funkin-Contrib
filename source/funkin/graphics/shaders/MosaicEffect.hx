package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import flixel.math.FlxPoint;

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
class MosaicEffect extends FlxRuntimeShader
{
  public var blockSize:FlxPoint = FlxPoint.get(1.0, 1.0);

  public function new()
  {
    super(Assets.getText(Paths.frag('mosaic')));
    setBlockSize(1.0, 1.0);
  }

  public function setBlockSize(w:Float, h:Float)
  {
    blockSize.set(w, h);
    setFloatArray("uBlocksize", [w, h]);
  }
}
