package funkin.graphics;

import flash.geom.ColorTransform;
import flixel.FlxCamera;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxFrame;
import flixel.math.FlxMatrix;
import flixel.math.FlxRect;
import flixel.system.FlxAssets.FlxShader;
import funkin.graphics.shaders.RuntimeCustomBlendShader;
import funkin.graphics.framebuffer.BitmapDataUtil;
import funkin.graphics.framebuffer.FixedBitmapData;
import openfl.Lib;
import openfl.display.BitmapData;
import openfl.display.BlendMode;
import openfl.display3D.textures.TextureBase;
import openfl.filters.BitmapFilter;
import openfl.filters.ShaderFilter;

/**
 * A FlxCamera with additional powerful features:
 * - Grab the camera screen as a `BitmapData` and use it as a texture
 * - Support `sprite.blend = DARKEN/HARDLIGHT/LIGHTEN/OVERLAY` to apply visual effects using certain sprites
 *   - NOTE: Several other blend modes work without FunkinCamera. Some still do not work.
 * - NOTE: Framerate-independent camera tweening is fixed in Flixel 6.x. Rest in peace, SwagCamera.
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
@:access(openfl.display.DisplayObject)
@:access(openfl.display.BitmapData)
@:access(openfl.display3D.Context3D)
@:access(openfl.display3D.textures.TextureBase)
@:access(flixel.graphics.FlxGraphic)
@:access(flixel.graphics.frames.FlxFrame)
class FunkinCamera extends FlxCamera
{
  final grabbed:Array<BitmapData> = [];
  final texturePool:Array<TextureBase> = [];

  final bgTexture:TextureBase;
  final bgBitmap:BitmapData;
  final bgFrame:FlxFrame;

  final customBlendShader:RuntimeCustomBlendShader;
  final customBlendFilter:ShaderFilter;

  var filtersApplied:Bool = false;
  var bgItemCount:Int = 0;

  public var shouldDraw:Bool = true;

  // Used to identify the camera during debugging.
  final id:String = 'unknown';

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  @:nullSafety(Off)
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  @:nullSafety(Off)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  @:nullSafety(Off)
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  @:nullSafety(Off)
>>>>>>> 905084b8 (idk2)
  public function new(id:String = 'unknown', x:Int = 0, y:Int = 0, width:Int = 0, height:Int = 0, zoom:Float = 0)
  {
    super(x, y, width, height, zoom);
    this.id = id;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    bgTexture = @:nullSafety(Off) pickTexture(width, height);
=======
    bgTexture = pickTexture(width, height);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    bgTexture = pickTexture(width, height);
=======
    bgTexture = @:nullSafety(Off) pickTexture(width, height);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    bgTexture = @:nullSafety(Off) pickTexture(width, height);
=======
    bgTexture = pickTexture(width, height);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    bgTexture = pickTexture(width, height);
=======
    bgTexture = @:nullSafety(Off) pickTexture(width, height);
>>>>>>> 905084b8 (idk2)
    bgBitmap = FixedBitmapData.fromTexture(bgTexture);
    bgFrame = new FlxFrame(new FlxGraphic('', null));
    bgFrame.parent.bitmap = bgBitmap;
    bgFrame.frame = new FlxRect();
    customBlendShader = new RuntimeCustomBlendShader();
    customBlendFilter = new ShaderFilter(customBlendShader);
  }

  /**
   * Grabs the camera screen and returns it as a `BitmapData`. The returned bitmap
   * will not be referred by the camera so, changing it will not affect the scene.
   * The returned bitmap **will be reused in the next frame**, so the content is available
   * only in the current frame.
   * @param applyFilters if this is `true`, the camera's filters will be applied to the grabbed bitmap,
   * and the camera's filters will be disabled until the beginning of the next frame
   * @param isolate if this is `true`, sprites to be rendered will only be rendered to the grabbed bitmap,
   * and the grabbed bitmap will not include any previously rendered sprites
   * @return the grabbed bitmap data
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):Null<BitmapData>
||||||| parent of 8a1f54ca (lol8)
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):Null<BitmapData>
=======
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):BitmapData
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):BitmapData
=======
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):Null<BitmapData>
>>>>>>> 905084b8 (idk2)
  {
    final texture = pickTexture(width, height);
    final bitmap = FixedBitmapData.fromTexture(texture);
<<<<<<< HEAD
<<<<<<< HEAD
    if (bitmap != null)
    {
      squashTo(bitmap, applyFilters, isolate);
      grabbed.push(bitmap);
    }
=======
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):BitmapData
||||||| parent of b150c43d (lol4)
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):BitmapData
=======
  public function grabScreen(applyFilters:Bool, isolate:Bool = false):Null<BitmapData>
>>>>>>> b150c43d (lol4)
  {
    final texture = pickTexture(width, height);
    final bitmap = FixedBitmapData.fromTexture(texture);
<<<<<<< HEAD
    squashTo(bitmap, applyFilters, isolate);
    grabbed.push(bitmap);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    squashTo(bitmap, applyFilters, isolate);
    grabbed.push(bitmap);
=======
    if (bitmap != null)
    {
      squashTo(bitmap, applyFilters, isolate);
      grabbed.push(bitmap);
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (bitmap != null)
    {
      squashTo(bitmap, applyFilters, isolate);
      grabbed.push(bitmap);
    }
=======
    squashTo(bitmap, applyFilters, isolate);
    grabbed.push(bitmap);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    squashTo(bitmap, applyFilters, isolate);
    grabbed.push(bitmap);
=======
    if (bitmap != null)
    {
      squashTo(bitmap, applyFilters, isolate);
      grabbed.push(bitmap);
    }
>>>>>>> 905084b8 (idk2)
    return bitmap;
  }

  /**
   * Applies the filter immediately to the camera. This will be done independently from
   * the camera's filters. This method can only be called after the first `grabScreen`
   * in the frame.
   * @param filter the filter
   */
  public function applyFilter(filter:BitmapFilter):Void
  {
    if (grabbed.length == 0)
    {
      FlxG.log.error('grab screen before you can apply a filter!');
      return;
    }
    BitmapDataUtil.applyFilter(bgBitmap, filter);
  }

  function squashTo(bitmap:BitmapData, applyFilters:Bool, isolate:Bool, clearScreen:Bool = false):Void
  {
    if (applyFilters && isolate)
    {
      FlxG.log.error('cannot apply filters while isolating!');
    }
    if (filtersApplied && applyFilters)
    {
      FlxG.log.warn('filters already applied!');
    }
    static final matrix = new FlxMatrix();

    // resize the background bitmap if needed
    if (bgTexture.__width != width || bgTexture.__height != height)
    {
      BitmapDataUtil.resizeTexture(bgTexture, width, height);
      bgBitmap.__resize(width, height);
      bgFrame.parent.bitmap = bgBitmap;
    }

    // grab the bitmap
    renderSkipping(isolate ? bgItemCount : 0);
    bitmap.fillRect(bitmap.rect, 0);
    matrix.setTo(1, 0, 0, 1, flashSprite.x, flashSprite.y);
    if (applyFilters)
    {
      bitmap.draw(flashSprite, matrix);
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
      flashSprite.filters = null;
      filtersApplied = true;
    }
    else
    {
      final tmp = flashSprite.filters;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      @:nullSafety(Off)
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
      @:nullSafety(Off)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      @:nullSafety(Off)
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
      @:nullSafety(Off)
>>>>>>> 905084b8 (idk2)
      flashSprite.filters = null;
      bitmap.draw(flashSprite, matrix);
      flashSprite.filters = tmp;
    }

    if (!isolate)
    {
      // also copy to the background bitmap
      bgBitmap.fillRect(bgBitmap.rect, 0);
      bgBitmap.draw(bitmap);
    }

    if (clearScreen)
    {
      // clear graphics data
      super.clearDrawStack();
      canvas.graphics.clear();
    }

    // render the background bitmap
    bgFrame.frame.set(0, 0, width, height);
    matrix.setTo(viewWidth / width, 0, 0, viewHeight / height, viewMarginLeft, viewMarginTop);
    drawPixels(bgFrame, matrix);

    // count background draw items for future isolation
    bgItemCount = 0;
    {
      var item = _headOfDrawStack;
      while (item != null)
      {
        item = item.next;
        bgItemCount++;
      }
    }
  }

  function renderSkipping(count:Int):Void
  {
    var item = _headOfDrawStack;
    while (item != null)
    {
      if (--count < 0) item.render(this);
      item = item.next;
    }
  }

  override function drawPixels(?frame:FlxFrame, ?pixels:BitmapData, matrix:FlxMatrix, ?transform:ColorTransform, ?blend:BlendMode, ?smoothing:Bool = false,
      ?shader:FlxShader):Void
  {
    if (!shouldDraw) return;

    if ( switch blend
      {
        case DARKEN | HARDLIGHT | LIGHTEN | OVERLAY: true;
        case _: false;
      })
    {
      // squash the screen
      grabScreen(false);
      // render without blend
      super.drawPixels(frame, pixels, matrix, transform, null, smoothing, shader);
      // get the isolated bitmap
      final isolated = grabScreen(false, true);
      // apply fullscreen blend
      customBlendShader.blendSwag = blend;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      @:nullSafety(Off) // I hope this doesn't cause issues
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
      @:nullSafety(Off) // I hope this doesn't cause issues
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      @:nullSafety(Off) // I hope this doesn't cause issues
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
      @:nullSafety(Off) // I hope this doesn't cause issues
>>>>>>> 905084b8 (idk2)
      customBlendShader.sourceSwag = isolated;
      customBlendShader.updateViewInfo(FlxG.width, FlxG.height, this);
      applyFilter(customBlendFilter);
    }
    else
    {
      super.drawPixels(frame, pixels, matrix, transform, blend, smoothing, shader);
    }
  }

  override function destroy():Void
  {
    super.destroy();
    disposeTextures();
  }

  override function clearDrawStack():Void
  {
    super.clearDrawStack();
    // also clear grabbed bitmaps
    for (bitmap in grabbed)
    {
      texturePool.push(bitmap.__texture);
      bitmap.dispose(); // this doesn't release the texture
    }
    grabbed.clear();
    // clear filters applied flag
    filtersApplied = false;
    bgItemCount = 0;
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function pickTexture(width:Int, height:Int):Null<TextureBase>
=======
  function pickTexture(width:Int, height:Int):TextureBase
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  function pickTexture(width:Int, height:Int):TextureBase
=======
  function pickTexture(width:Int, height:Int):Null<TextureBase>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  function pickTexture(width:Int, height:Int):Null<TextureBase>
=======
  function pickTexture(width:Int, height:Int):TextureBase
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function pickTexture(width:Int, height:Int):TextureBase
=======
  function pickTexture(width:Int, height:Int):Null<TextureBase>
>>>>>>> 905084b8 (idk2)
  {
    // zero-sized textures will be problematic
    width = width < 1 ? 1 : width;
    height = height < 1 ? 1 : height;
    if (texturePool.length > 0)
    {
      final res = texturePool.pop();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if (res != null) BitmapDataUtil.resizeTexture(res, width, height);
      else
        trace('huh? why is this null? $texturePool');
=======
      BitmapDataUtil.resizeTexture(res, width, height);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      BitmapDataUtil.resizeTexture(res, width, height);
=======
      if (res != null) BitmapDataUtil.resizeTexture(res, width, height);
      else
        trace('huh? why is this null? $texturePool');
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      if (res != null) BitmapDataUtil.resizeTexture(res, width, height);
      else
        trace('huh? why is this null? $texturePool');
=======
      BitmapDataUtil.resizeTexture(res, width, height);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      BitmapDataUtil.resizeTexture(res, width, height);
=======
      if (res != null) BitmapDataUtil.resizeTexture(res, width, height);
      else
        trace('huh? why is this null? $texturePool');
>>>>>>> 905084b8 (idk2)
      return res;
    }
    return Lib.current.stage.context3D.createTexture(width, height, BGRA, true);
  }

  function disposeTextures():Void
  {
    trace('disposing textures');
    for (bitmap in grabbed)
    {
      bitmap.dispose();
    }
    grabbed.clear();
    for (texture in texturePool)
    {
      texture.dispose();
    }
    texturePool.resize(0);
    bgTexture.dispose();
    bgBitmap.dispose();
  }
}
