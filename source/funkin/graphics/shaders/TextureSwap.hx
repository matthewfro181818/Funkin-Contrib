package funkin.graphics.shaders;

import flixel.system.FlxAssets.FlxShader;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.util.FlxColor;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.util.FlxColor;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.util.FlxColor;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.util.FlxColor;
=======
>>>>>>> 905084b8 (idk2)
import openfl.display.BitmapData;

class TextureSwap extends FlxShader
{
  public var swappedImage(default, set):BitmapData;
  public var amount(default, set):Float;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public function loadSwapImage(path:String)
  {
    #if html5
    BitmapData.loadFromFile(path).onComplete(function(bmp:BitmapData) {
      swappedImage = bmp;
    });
    #else
    swappedImage = BitmapData.fromFile(path);
    #end
  }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  public function loadSwapImage(path:String)
  {
    #if html5
    BitmapData.loadFromFile(path).onComplete(function(bmp:BitmapData) {
      swappedImage = bmp;
    });
    #else
    swappedImage = BitmapData.fromFile(path);
    #end
  }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public function loadSwapImage(path:String)
  {
    #if html5
    BitmapData.loadFromFile(path).onComplete(function(bmp:BitmapData) {
      swappedImage = bmp;
    });
    #else
    swappedImage = BitmapData.fromFile(path);
    #end
  }

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  public function loadSwapImage(path:String)
  {
    #if html5
    BitmapData.loadFromFile(path).onComplete(function(bmp:BitmapData) {
      swappedImage = bmp;
    });
    #else
    swappedImage = BitmapData.fromFile(path);
    #end
  }

>>>>>>> 905084b8 (idk2)
  function set_swappedImage(_bitmapData:BitmapData):BitmapData
  {
    image.input = _bitmapData;

    return _bitmapData;
  }

  function set_amount(val:Float):Float
  {
    fadeAmount.value = [val];

    return val;
  }

  @:glFragmentSource('
        #pragma header

        uniform sampler2D image;
        uniform float fadeAmount;

        void main()
        {
            vec4 tex = flixel_texture2D(bitmap, openfl_TextureCoordv);
            vec4 tex2 = flixel_texture2D(image, openfl_TextureCoordv);

            vec4 finalColor = mix(tex, vec4(tex2.rgb, tex.a), fadeAmount);

            gl_FragColor = finalColor;
        }
    ')
  public function new()
  {
    super();

    this.amount = 1;
  }
}
