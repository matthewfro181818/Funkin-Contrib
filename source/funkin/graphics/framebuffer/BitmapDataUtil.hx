package funkin.graphics.framebuffer;

import flixel.FlxG;
import openfl.Lib;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.display3D.Context3DTextureFormat;
import openfl.display3D.textures.TextureBase;
import openfl.filters.BitmapFilter;

/**
 * Provides cool stuff for `BitmapData`s that have a hardware texture internally.
 */
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
@:access(openfl.display.BitmapData)
@:access(openfl.display3D.textures.TextureBase)
@:access(openfl.display3D.Context3D)
class BitmapDataUtil
{
  static function getCache():{sprite:Sprite, bitmap:Bitmap}
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    static var cache:Null<{sprite:Sprite, bitmap:Bitmap}> = null;
=======
    static var cache:{sprite:Sprite, bitmap:Bitmap} = null;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    static var cache:{sprite:Sprite, bitmap:Bitmap} = null;
=======
    static var cache:Null<{sprite:Sprite, bitmap:Bitmap}> = null;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    static var cache:Null<{sprite:Sprite, bitmap:Bitmap}> = null;
=======
    static var cache:{sprite:Sprite, bitmap:Bitmap} = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    static var cache:{sprite:Sprite, bitmap:Bitmap} = null;
=======
    static var cache:Null<{sprite:Sprite, bitmap:Bitmap}> = null;
>>>>>>> 905084b8 (idk2)
    if (cache == null)
    {
      final sprite = new Sprite();
      final bitmap = new Bitmap();
      sprite.addChild(bitmap);
      cache =
        {
          sprite: sprite,
          bitmap: bitmap
        }
    }
    return cache;
  }

  /**
   * Applies a bitmap filter to a bitmap immediately. The bitmap filter may refer
   * the bitmap itself as a shader input.
   * @param bitmap the bitmap data
   * @param filter the bitmap filter
   */
  public static function applyFilter(bitmap:BitmapData, filter:BitmapFilter):Void
  {
    hardwareCheck(bitmap);
    final cache = getCache();
    cache.bitmap.bitmapData = bitmap;
    cache.sprite.filters = [filter];
    bitmap.draw(cache.sprite);
  }

  /**
   * Creates a bitmap with a hardware texture.
   * @param width the width
   * @param height the height
   * @param format the format if the internal texture
   * @return the bitmap
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):Null<FixedBitmapData>
=======
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):FixedBitmapData
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):FixedBitmapData
=======
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):Null<FixedBitmapData>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):Null<FixedBitmapData>
=======
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):FixedBitmapData
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):FixedBitmapData
=======
  public static function create(width:Int, height:Int, format:Context3DTextureFormat = BGRA):Null<FixedBitmapData>
>>>>>>> 905084b8 (idk2)
  {
    final texture = Lib.current.stage.context3D.createTexture(width, height, format, true);
    return FixedBitmapData.fromTexture(texture);
  }

  /**
   * Resizes the bitmap.
   * @param bitmap the bitmap data
   * @param width the width
   * @param height the height
   */
  public static function resize(bitmap:BitmapData, width:Int, height:Int):Void
  {
    hardwareCheck(bitmap);
    if (bitmap.width == width && bitmap.height == height) return;
    bitmap.width = width;
    bitmap.height = height;
    resizeTexture(bitmap.__texture, width, height);
  }

  /**
   * Resizes the texture.
   * @param texture the texture
   * @param width the width
   * @param height the height
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  @:nullSafety(Off) // the final context there is causing an error, idk how to fix it
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  @:nullSafety(Off) // the final context there is causing an error, idk how to fix it
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  @:nullSafety(Off) // the final context there is causing an error, idk how to fix it
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  @:nullSafety(Off) // the final context there is causing an error, idk how to fix it
>>>>>>> 905084b8 (idk2)
  public static function resizeTexture(texture:TextureBase, width:Int, height:Int):Void
  {
    if (texture.__width == width && texture.__height == height) return;
    texture.__width = width;
    texture.__height = height;
    final context = texture.__context;
    final gl = context.gl;
    context.__bindGLTexture2D(texture.__textureID);
    gl.texImage2D(gl.TEXTURE_2D, 0, texture.__internalFormat, width, height, 0, texture.__format, gl.UNSIGNED_BYTE, null);
    context.__bindGLTexture2D(null);
  }

  /**
   * Copies the content of `src` to `dst`. The destination bitmap `dst` will be resized
   * so that it has the same size as `src`.
   * @param dst the destination bitmap
   * @param src the source bitmap
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  @:nullSafety(Off) // TODO: Remove this once openfl.display.Sprite has been null safed.
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  @:nullSafety(Off) // TODO: Remove this once openfl.display.Sprite has been null safed.
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  @:nullSafety(Off) // TODO: Remove this once openfl.display.Sprite has been null safed.
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  @:nullSafety(Off) // TODO: Remove this once openfl.display.Sprite has been null safed.
>>>>>>> 905084b8 (idk2)
  public static function copy(dst:BitmapData, src:BitmapData):Void
  {
    hardwareCheck(dst);
    hardwareCheck(src);
    final cache = getCache();
    cache.bitmap.bitmapData = src;
    cache.sprite.filters = null;
    resize(dst, src.width, src.height);
    dst.fillRect(dst.rect, 0);
    dst.draw(cache.sprite);
  }

  static function hardwareCheck(bitmap:BitmapData):Void
  {
    if (bitmap.readable)
    {
      FlxG.log.error('do not use `BitmapDataUtil` for non-GPU bitmaps!');
    }
  }
}
