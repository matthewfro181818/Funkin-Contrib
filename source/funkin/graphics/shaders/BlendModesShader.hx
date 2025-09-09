package funkin.graphics.shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.display.BitmapData;
import openfl.display.ShaderInput;

<<<<<<< HEAD
@:nullSafety
class BlendModesShader extends FlxRuntimeShader
{
  public var camera:Null<ShaderInput<BitmapData>>;
  public var cameraData:Null<BitmapData>;
=======
class BlendModesShader extends FlxRuntimeShader
{
  public var camera:ShaderInput<BitmapData>;
  public var cameraData:BitmapData;
>>>>>>> e11c5f8d (Add files via upload)

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
