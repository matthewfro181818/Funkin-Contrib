package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.display.BitmapData;
import openfl.display.ShaderInput;

<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
class BlendModesShader extends FlxRuntimeShader
{
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
