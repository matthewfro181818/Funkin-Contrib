package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.Assets;

enum WiggleEffectType
{
  DREAMY; // 0
  WAVY; // 1
  HEAT_WAVE_HORIZONTAL; // 2
  HEAT_WAVE_VERTICAL; // 3
  FLAG; // 4
}

/**
 * To use:
 * 1. Create an instance of the class, specifying speed, frequency, and amplitude.
 * 2. Call `sprite.shader = wiggleEffect` on the target sprite.
 * 3. Call the update() method on the instance every frame.
 */
<<<<<<< HEAD
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
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
class WiggleEffectRuntime extends FlxRuntimeShader
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class WiggleEffectRuntime extends FlxRuntimeShader
{
<<<<<<< HEAD
  public static function getEffectTypeId(v:WiggleEffectType):Int
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public static function getEffectTypeId(v:WiggleEffectType):Int
=======
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
=======
  public static function getEffectTypeId(v:WiggleEffectType):Int
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public static function getEffectTypeId(v:WiggleEffectType):Int
=======
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
=======
  public static function getEffectTypeId(v:WiggleEffectType):Int
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public static function getEffectTypeId(v:Null<WiggleEffectType>):Int
=======
  public static function getEffectTypeId(v:WiggleEffectType):Int
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    return WiggleEffectType.getConstructors().indexOf(Std.string(v));
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
||||||| parent of 8a1f54ca (lol8)
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
=======
  public var effectType(default, set):WiggleEffectType = DREAMY;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var effectType(default, set):WiggleEffectType = DREAMY;
=======
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
=======
  public var effectType(default, set):WiggleEffectType = DREAMY;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
=======
  public var effectType(default, set):WiggleEffectType = DREAMY;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
=======
  public var effectType(default, set):WiggleEffectType = DREAMY;
||||||| parent of b150c43d (lol4)
  public var effectType(default, set):WiggleEffectType = DREAMY;
=======
  public var effectType(default, set):Null<WiggleEffectType> = DREAMY;
>>>>>>> b150c43d (lol4)

<<<<<<< HEAD
  function set_effectType(v:WiggleEffectType):WiggleEffectType
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  function set_effectType(v:WiggleEffectType):WiggleEffectType
=======
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
=======
  function set_effectType(v:WiggleEffectType):WiggleEffectType
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function set_effectType(v:WiggleEffectType):WiggleEffectType
=======
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
=======
  function set_effectType(v:WiggleEffectType):WiggleEffectType
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  function set_effectType(v:Null<WiggleEffectType>):Null<WiggleEffectType>
=======
  function set_effectType(v:WiggleEffectType):WiggleEffectType
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    this.setInt('effectType', getEffectTypeId(v));
    return effectType = v;
  }

  public var waveSpeed(default, set):Float = 0;

  function set_waveSpeed(v:Float):Float
  {
    this.setFloat('uSpeed', v);
    return waveSpeed = v;
  }

  public var waveFrequency(default, set):Float = 0;

  function set_waveFrequency(v:Float):Float
  {
    this.setFloat('uFrequency', v);
    return waveFrequency = v;
  }

  public var waveAmplitude(default, set):Float = 0;

  function set_waveAmplitude(v:Float):Float
  {
    this.setFloat('uWaveAmplitude', v);
    return waveAmplitude = v;
  }

  var time(default, set):Float = 0;

  function set_time(v:Float):Float
  {
    this.setFloat('uTime', v);
    return time = v;
  }

  public function new(speed:Float, freq:Float, amplitude:Float, ?effect:WiggleEffectType = DREAMY):Void
  {
    super(Assets.getText(Paths.frag('wiggle')));

    // These values may not propagate to the shader until later.
    this.waveSpeed = speed;
    this.waveFrequency = freq;
    this.waveAmplitude = amplitude;
    this.effectType = effect;
  }

  public function update(elapsed:Float)
  {
    // The setter tied to this value automatically propagates the value to the shader.
    this.time += elapsed;
  }
}
