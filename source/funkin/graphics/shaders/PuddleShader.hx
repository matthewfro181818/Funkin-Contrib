package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.Assets;

<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
class PuddleShader extends FlxRuntimeShader
{
  public function new()
  {
    super(Assets.getText(Paths.frag('puddle')));
  }
}
