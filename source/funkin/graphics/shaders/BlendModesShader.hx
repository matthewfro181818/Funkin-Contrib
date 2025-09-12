package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.display.BitmapData;
import openfl.display.ShaderInput;

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
class BlendModesShader extends FlxRuntimeShader
{
<<<<<<< HEAD
<<<<<<< HEAD
  public var camera:Null<ShaderInput<BitmapData>>;
  public var cameraData:Null<BitmapData>;
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class BlendModesShader extends FlxRuntimeShader
{
<<<<<<< HEAD
  public var camera:ShaderInput<BitmapData>;
  public var cameraData:BitmapData;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var camera:ShaderInput<BitmapData>;
  public var cameraData:BitmapData;
=======
  public var camera:Null<ShaderInput<BitmapData>>;
  public var cameraData:Null<BitmapData>;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var camera:Null<ShaderInput<BitmapData>>;
  public var cameraData:Null<BitmapData>;
=======
  public var camera:ShaderInput<BitmapData>;
  public var cameraData:BitmapData;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var camera:ShaderInput<BitmapData>;
  public var cameraData:BitmapData;
=======
  public var camera:Null<ShaderInput<BitmapData>>;
  public var cameraData:Null<BitmapData>;
>>>>>>> 905084b8 (idk2)

  public function new()
  {
    super(Assets.getText(Paths.frag('blendModes')));
  }

  public function setCamera(cameraData:BitmapData):Void
  {
    this.cameraData = cameraData;

    this.setBitmapData('camera', this.cameraData);
  }
}
