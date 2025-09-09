package funkin.graphics.shaders;

import flixel.system.FlxAssets.FlxShader;

<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
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
