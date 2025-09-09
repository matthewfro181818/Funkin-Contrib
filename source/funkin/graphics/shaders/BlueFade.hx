package funkin.graphics.shaders;

import flixel.system.FlxAssets.FlxShader;
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.tweens.FlxEase;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.tweens.FlxEase;
=======
>>>>>>> b150c43d (lol4)
import flixel.tweens.FlxTween;

class BlueFade extends FlxShader
{
<<<<<<< HEAD
<<<<<<< HEAD
  public var fadeVal(default, set):Float = 1;
=======
  public var fadeVal(default, set):Float;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var fadeVal(default, set):Float;
=======
  public var fadeVal(default, set):Float = 1;
>>>>>>> b150c43d (lol4)

  function set_fadeVal(val:Float):Float
  {
    fadeAmt.value = [val];
    fadeVal = val;
    // trace(fadeVal);

    return val;
  }

  public function fade(startAmt:Float = 0, targetAmt:Float = 1, duration:Float, _options:TweenOptions):Void
  {
    fadeVal = startAmt;
    FlxTween.tween(this, {fadeVal: targetAmt}, duration, _options);
  }

  @:glFragmentSource('
       #pragma header

        // Value from (0, 1)
        uniform float fadeAmt;

        // fade the image to blue as it fades to black

        void main()
        {
          vec4 tex = flixel_texture2D(bitmap, openfl_TextureCoordv);

          vec4 finalColor = mix(vec4(vec4(0.0, 0.0, tex.b, tex.a) * fadeAmt), vec4(tex * fadeAmt), fadeAmt);

          // Output to screen
          gl_FragColor = finalColor;
        }

    ')
  public function new()
  {
    super();

    this.fadeVal = 1;
  }
}
