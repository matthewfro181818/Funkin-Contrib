package funkin.graphics.shaders;

import flixel.system.FlxAssets.FlxShader;
import flixel.util.FlxColor;

class PureColor extends FlxShader
{
  public var col(default, set):FlxColor;
  public var colorSet(default, set):Bool;

  function set_colorSet(bol:Bool):Bool
  {
    colSet.value = [bol];

    return bol;
  }

  function set_col(val:FlxColor):FlxColor
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    funnyColor.value = [val.redFloat, val.greenFloat, val.blueFloat, val.alphaFloat];
=======
    funnyColor.value = [val.red, val.green, val.blue, val.alpha];
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    funnyColor.value = [val.red, val.green, val.blue, val.alpha];
=======
    funnyColor.value = [val.redFloat, val.greenFloat, val.blueFloat, val.alphaFloat];
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    funnyColor.value = [val.redFloat, val.greenFloat, val.blueFloat, val.alphaFloat];
=======
    funnyColor.value = [val.red, val.green, val.blue, val.alpha];
>>>>>>> 8a1f54ca (lol8)

    return val;
  }

  @:glFragmentSource('
        #pragma header

        uniform vec4 funnyColor;
        uniform bool colSet;

        void main()
        {
            vec4 color = flixel_texture2D(bitmap, openfl_TextureCoordv);

            if (color.a > 0.0 && colSet)
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
                color = funnyColor * color.a;
=======
                color = vec4(funnyColor.r, funnyColor.g, funnyColor.b, color.a);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
                color = vec4(funnyColor.r, funnyColor.g, funnyColor.b, color.a);
=======
                color = funnyColor * color.a;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
                color = funnyColor * color.a;
=======
                color = vec4(funnyColor.r, funnyColor.g, funnyColor.b, color.a);
>>>>>>> 8a1f54ca (lol8)

            gl_FragColor = color;
        }
    ')
  public function new(colr:FlxColor)
  {
    super();

    this.col = colr;
    this.colorSet = false;
  }
}
