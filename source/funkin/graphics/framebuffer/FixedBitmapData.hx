package funkin.graphics.framebuffer;

import openfl.display.BitmapData;
import openfl.display.DisplayObject;
import openfl.display.DisplayObjectContainer;
import openfl.display.IBitmapDrawable;
import openfl.display.OpenGLRenderer;
import openfl.display3D.textures.TextureBase;

/**
 * `BitmapData` is kinda broken so I fixed it.
 */
<<<<<<< HEAD
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
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
@:access(openfl.display3D.textures.TextureBase)
@:access(openfl.display.OpenGLRenderer)
class FixedBitmapData extends BitmapData
{
  override function __drawGL(source:IBitmapDrawable, renderer:OpenGLRenderer):Void
  {
    if (Std.isOfType(source, DisplayObject))
    {
      final object:DisplayObjectContainer = cast source;
      renderer.__stage = object.stage;
    }
    super.__drawGL(source, renderer);
  }

  /**
   * Never use `BitmapData.fromTexture`, always use this.
   * @param texture the texture
   * @return the bitmap data
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
=======
  public static function fromTexture(texture:TextureBase):FixedBitmapData
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public static function fromTexture(texture:TextureBase):FixedBitmapData
=======
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
=======
  public static function fromTexture(texture:TextureBase):FixedBitmapData
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public static function fromTexture(texture:TextureBase):FixedBitmapData
=======
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
=======
  public static function fromTexture(texture:TextureBase):FixedBitmapData
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public static function fromTexture(texture:Null<TextureBase>):Null<FixedBitmapData>
=======
  public static function fromTexture(texture:TextureBase):FixedBitmapData
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    if (texture == null) return null;
    final bitmapData:FixedBitmapData = new FixedBitmapData(texture.__width, texture.__height, true, 0);
    // bitmapData.readable = false;
    bitmapData.__texture = texture;
    bitmapData.__textureContext = texture.__textureContext;
    // bitmapData.image = null;
    return bitmapData;
  }
}
