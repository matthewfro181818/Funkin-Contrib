package funkin.graphics.shaders;

import flixel.system.FlxAssets.FlxShader;

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
class WaveShader extends FlxShader
{
  @:glFragmentSource('
        #pragma header

        void main()
        {
            vec4 color = flixel_texture2D(bitmap, openfl_TextureCoordv);

            gl_FragColor = color;
        }

    ')
  public function new()
  {
    super();
  }
}
