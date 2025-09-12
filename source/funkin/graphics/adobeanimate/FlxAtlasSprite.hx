package funkin.graphics.adobeanimate;

import flixel.util.FlxSignal.FlxTypedSignal;
import flxanimate.FlxAnimate;
import flxanimate.FlxAnimate.Settings;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
||||||| parent of 8a1f54ca (lol8)
=======
import flxanimate.frames.FlxAnimateFrames;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flxanimate.frames.FlxAnimateFrames;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flxanimate.frames.FlxAnimateFrames;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import flxanimate.frames.FlxAnimateFrames;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.graphics.frames.FlxFrame;
import flixel.system.FlxAssets.FlxGraphicAsset;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flxanimate.frames.FlxAnimateFrames;
||||||| parent of b150c43d (lol4)
import flxanimate.frames.FlxAnimateFrames;
=======
>>>>>>> b150c43d (lol4)
import flixel.graphics.frames.FlxFrame;
import flixel.system.FlxAssets.FlxGraphicAsset;
<<<<<<< HEAD
import openfl.display.BitmapData;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import openfl.display.BitmapData;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import openfl.display.BitmapData;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import openfl.display.BitmapData;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import openfl.display.BitmapData;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import openfl.display.BitmapData;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.math.FlxPoint;
import flxanimate.animate.FlxKeyFrame;

/**
 * A sprite which provides convenience functions for rendering a texture atlas with animations.
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
class FlxAtlasSprite extends FlxAnimate
{
  static final SETTINGS:Settings =
    {
      // ?ButtonSettings:Map<String, flxanimate.animate.FlxAnim.ButtonSettings>,
      FrameRate: 24.0,
      Reversed: false,
      // ?OnComplete:Void -> Void,
      ShowPivot: false,
      Antialiasing: true,
      ScrollFactor: null,
      // Offset: new FlxPoint(0, 0), // This is just FlxSprite.offset
    };

  /**
   * Signal dispatched when an animation advances to the next frame.
   */
  public var onAnimationFrame:FlxTypedSignal<String->Int->Void> = new FlxTypedSignal();

  /**
   * Signal dispatched when a non-looping animation finishes playing.
   */
  public var onAnimationComplete:FlxTypedSignal<String->Void> = new FlxTypedSignal();

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
||||||| parent of 8a1f54ca (lol8)
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
=======
  var currentAnimation:String;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var currentAnimation:String;
=======
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
=======
  var currentAnimation:String;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
=======
  var currentAnimation:String;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

  var canPlayOtherAnims:Bool = true;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
=======
  var currentAnimation:String;
||||||| parent of b150c43d (lol4)
  var currentAnimation:String;
=======
  /**
   * Signal dispatched when a looping animation finishes playing.
   */
  public var onAnimationLoop:FlxTypedSignal<String->Void> = new FlxTypedSignal();

  var currentAnimation:String = '';
>>>>>>> b150c43d (lol4)

  var canPlayOtherAnims:Bool = true;

<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  @:nullSafety(Off) // null safety HATES new classes atm, it'll be fixed in haxe 4.0.0?
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  public function new(x:Float, y:Float, ?path:String, ?settings:Settings)
  {
    if (settings == null) settings = SETTINGS;

    if (path == null)
    {
      throw 'Null path specified for FlxAtlasSprite!';
    }

    // Validate asset path.
    if (!Assets.exists('${path}/Animation.json'))
    {
      throw 'FlxAtlasSprite does not have an Animation.json file at the specified path (${path})';
    }

    super(x, y, path, settings);

    if (this.anim.stageInstance == null)
    {
      throw 'FlxAtlasSprite not initialized properly. Are you sure the path (${path}) exists?';
    }

    onAnimationComplete.add(cleanupAnimation);

    // This defaults the sprite to play the first animation in the atlas,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // then pauses it. This ensures symbols are initialized properly.
=======
    // then pauses it. This ensures symbols are intialized properly.
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    // then pauses it. This ensures symbols are intialized properly.
=======
    // then pauses it. This ensures symbols are initialized properly.
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // then pauses it. This ensures symbols are initialized properly.
=======
    // then pauses it. This ensures symbols are intialized properly.
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    // then pauses it. This ensures symbols are intialized properly.
=======
    // then pauses it. This ensures symbols are initialized properly.
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    // then pauses it. This ensures symbols are initialized properly.
=======
    // then pauses it. This ensures symbols are intialized properly.
>>>>>>> cd960b0a (idk7)
    this.anim.play('');
    this.anim.pause();

    this.anim.onComplete.add(_onAnimationComplete);
    this.anim.onFrame.add(_onAnimationFrame);
  }

  /**
   * @return A list of all the animations this sprite has available.
   */
  public function listAnimations():Array<String>
  {
    var mainSymbol = this.anim.symbolDictionary[this.anim.stageInstance.symbol.name];
    if (mainSymbol == null)
    {
      FlxG.log.error('FlxAtlasSprite does not have its main symbol!');
      return [];
    }
    return mainSymbol.getFrameLabels().map(keyFrame -> keyFrame.name).filterNull();
  }

  /**
   * @param id A string ID of the animation.
   * @return Whether the animation was found on this sprite.
   */
  public function hasAnimation(id:String):Bool
  {
    return getLabelIndex(id) != -1 || anim.symbolDictionary.exists(id);
  }

  /**
   * @return The current animation being played.
   */
  public function getCurrentAnimation():String
  {
    return this.currentAnimation;
  }

  var _completeAnim:Bool = false;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var fr:Null<FlxKeyFrame> = null;
=======
  var fr:FlxKeyFrame = null;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  var fr:FlxKeyFrame = null;
=======
  var fr:Null<FlxKeyFrame> = null;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var fr:Null<FlxKeyFrame> = null;
=======
  var fr:FlxKeyFrame = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var fr:FlxKeyFrame = null;
=======
  var fr:Null<FlxKeyFrame> = null;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var fr:Null<FlxKeyFrame> = null;
=======
  var fr:FlxKeyFrame = null;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  var fr:Null<FlxKeyFrame> = null;
=======
  var fr:FlxKeyFrame = null;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

  var looping:Bool = false;

  public var ignoreExclusionPref:Array<String> = [];

  /**
   * Plays an animation.
   * @param id A string ID of the animation to play.
   * @param restart Whether to restart the animation if it is already playing.
   * @param ignoreOther Whether to ignore all other animation inputs, until this one is done playing
   * @param loop Whether to loop the animation
   * @param startFrame The frame to start the animation on
   * NOTE: `loop` and `ignoreOther` are not compatible with each other!
   */
  public function playAnimation(id:String, restart:Bool = false, ignoreOther:Bool = false, loop:Bool = false, startFrame:Int = 0):Void
  {
    // Skip if not allowed to play animations.
    if ((!canPlayOtherAnims))
    {
      if (this.currentAnimation == id && restart) {}
      else if (ignoreExclusionPref != null && ignoreExclusionPref.length > 0)
      {
        var detected:Bool = false;
        for (entry in ignoreExclusionPref)
        {
          if (StringTools.startsWith(id, entry))
          {
            detected = true;
            break;
          }
        }
        if (!detected) return;
      }
      else
        return;
    }

    if (anim == null) return;

    if (id == null || id == '') id = this.currentAnimation;

    if (this.currentAnimation == id && !restart)
    {
      if (!anim.isPlaying)
      {
        if (fr != null) anim.curFrame = fr.index + startFrame;
        else
          anim.curFrame = startFrame;

        // Resume animation if it's paused.
        anim.resume();
      }

      return;
    }
    else if (!hasAnimation(id))
    {
      // Skip if the animation doesn't exist
      trace('Animation ' + id + ' not found');
      return;
    }

    this.currentAnimation = id;
    anim.onComplete.removeAll();
    anim.onComplete.add(function() {
      _onAnimationComplete();
    });

    looping = loop;

    // Prevent other animations from playing if `ignoreOther` is true.
    if (ignoreOther) canPlayOtherAnims = false;

    // Move to the first frame of the animation.
    // goToFrameLabel(id);
    // trace('Playing animation $id');
    if ((id == null || id == "") || this.anim.symbolDictionary.exists(id) || (this.anim.getByName(id) != null))
    {
      this.anim.play(id, restart, false, startFrame);

      this.currentAnimation = anim.curSymbol.name;

      fr = null;
    }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var frameLabelNames = getFrameLabelNames();
||||||| parent of 8a1f54ca (lol8)
    var frameLabelNames = getFrameLabelNames();
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    var frameLabelNames = getFrameLabelNames();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var frameLabelNames = getFrameLabelNames();
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var frameLabelNames = getFrameLabelNames();
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    // Only call goToFrameLabel if there is a frame label with that name. This prevents annoying warnings!
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
=======
||||||| parent of b150c43d (lol4)
=======
    var frameLabelNames = getFrameLabelNames();
>>>>>>> b150c43d (lol4)
    // Only call goToFrameLabel if there is a frame label with that name. This prevents annoying warnings!
<<<<<<< HEAD
    if (getFrameLabelNames().indexOf(id) != -1)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (getFrameLabelNames().indexOf(id) != -1)
=======
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
=======
    if (getFrameLabelNames().indexOf(id) != -1)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (getFrameLabelNames().indexOf(id) != -1)
=======
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
=======
    if (getFrameLabelNames().indexOf(id) != -1)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (frameLabelNames != null && frameLabelNames.indexOf(id) != -1)
=======
    if (getFrameLabelNames().indexOf(id) != -1)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    {
      goToFrameLabel(id);
      fr = anim.getFrameLabel(id);
      anim.curFrame += startFrame;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      // Resume animation if it's paused.
      anim.resume();
||||||| parent of 8a1f54ca (lol8)
      // Resume animation if it's paused.
      anim.resume();
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
      // Resume animation if it's paused.
      anim.resume();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      // Resume animation if it's paused.
      anim.resume();
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
      // Resume animation if it's paused.
      anim.resume();
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    }
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  override public function update(elapsed:Float):Void
=======
||||||| parent of b150c43d (lol4)
=======
      // Resume animation if it's paused.
      anim.resume();
>>>>>>> b150c43d (lol4)
    }
  }

<<<<<<< HEAD
  override public function update(elapsed:Float)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  override public function update(elapsed:Float)
=======
  override public function update(elapsed:Float):Void
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  override public function update(elapsed:Float):Void
=======
  override public function update(elapsed:Float)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  override public function update(elapsed:Float)
=======
  override public function update(elapsed:Float):Void
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  override public function update(elapsed:Float):Void
=======
  override public function update(elapsed:Float)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  override public function update(elapsed:Float):Void
=======
  override public function update(elapsed:Float)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    super.update(elapsed);
  }

  /**
   * Returns true if the animation has finished playing.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * @return Whether the animation has finished playing.
||||||| parent of 8a1f54ca (lol8)
   * @return Whether the animation has finished playing.
=======
   * Never true if animation is configured to loop.
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
   * Never true if animation is configured to loop.
=======
   * @return Whether the animation has finished playing.
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
   * @return Whether the animation has finished playing.
=======
   * Never true if animation is configured to loop.
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
   * @return Whether the animation has finished playing.
=======
   * Never true if animation is configured to loop.
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
   */
  public function isAnimationFinished():Bool
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    return isLoopComplete();
=======
   * Never true if animation is configured to loop.
||||||| parent of b150c43d (lol4)
   * Never true if animation is configured to loop.
=======
   * @return Whether the animation has finished playing.
>>>>>>> b150c43d (lol4)
   */
  public function isAnimationFinished():Bool
  {
<<<<<<< HEAD
    return this.anim.finished;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    return this.anim.finished;
=======
    return isLoopComplete();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    return isLoopComplete();
=======
    return this.anim.finished;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    return this.anim.finished;
=======
    return isLoopComplete();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    return isLoopComplete();
=======
    return this.anim.finished;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    return isLoopComplete();
=======
    return this.anim.finished;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  /**
   * Returns true if the animation has reached the last frame.
   * Can be true even if animation is configured to loop.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * @return Whether the animation has reached the last frame.
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
   * @return Whether the animation has reached the last frame.
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
   * @return Whether the animation has reached the last frame.
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
   * @return Whether the animation has reached the last frame.
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
   * @return Whether the animation has reached the last frame.
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
   * @return Whether the animation has reached the last frame.
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
   */
  public function isLoopComplete():Bool
  {
    if (this.anim == null) return false;
    if (!this.anim.isPlaying) return false;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
=======
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
=======
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
=======
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
=======
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
=======
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (fr != null)
    {
      var curFrame = anim.curFrame;

      var startFrame = fr.index;
      var endFrame = (fr.index + fr.duration);

      return (anim.reversed) ? (curFrame < startFrame) : (curFrame >= endFrame);
    }
=======
    if (fr != null) return (anim.reversed && anim.curFrame < fr.index || !anim.reversed && anim.curFrame >= (fr.index + fr.duration));
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    return (anim.reversed && anim.curFrame == 0 || !(anim.reversed) && (anim.curFrame) >= (anim.length - 1));
  }

  /**
   * Stops the current animation.
   */
  public function stopAnimation():Void
  {
    if (this.currentAnimation == null) return;

    this.anim.removeAllCallbacksFrom(getNextFrameLabel(this.currentAnimation));

    goToFrameIndex(0);
  }

  function addFrameCallback(label:String, callback:Void->Void):Void
  {
    var frameLabel = this.anim.getFrameLabel(label);
    frameLabel.add(callback);
  }

  function goToFrameLabel(label:String):Void
  {
    this.anim.goToFrameLabel(label);
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String>):Null<Array<String>>
=======
  function getFrameLabelNames(?layer:haxe.extern.EitherType<Int, String> = null)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    var labels = this.anim.getFrameLabels(layer);
    var array = [];
    for (label in labels)
    {
      array.push(label.name);
    }

    return array;
  }

  function getNextFrameLabel(label:String):String
  {
    return listAnimations()[(getLabelIndex(label) + 1) % listAnimations().length];
  }

  function getLabelIndex(label:String):Int
  {
    return listAnimations().indexOf(label);
  }

  function goToFrameIndex(index:Int):Void
  {
    this.anim.curFrame = index;
  }

  public function cleanupAnimation(_:String):Void
  {
    canPlayOtherAnims = true;
    // this.currentAnimation = null;
    this.anim.pause();
  }

  function _onAnimationFrame(frame:Int):Void
  {
    if (currentAnimation != null)
    {
      onAnimationFrame.dispatch(currentAnimation, frame);

      if (isLoopComplete())
      {
        anim.pause();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
        _onAnimationComplete();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        _onAnimationComplete();
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
        _onAnimationComplete();
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        _onAnimationComplete();
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
        _onAnimationComplete();
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
        _onAnimationComplete();
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

        if (looping)
        {
          anim.curFrame = (fr != null) ? fr.index : 0;
          anim.resume();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          _onAnimationLoop();
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
          _onAnimationLoop();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          _onAnimationLoop();
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
          _onAnimationLoop();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          _onAnimationLoop();
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
          _onAnimationLoop();
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
        }
        else if (fr != null && anim.curFrame != anim.length - 1)
        {
          anim.curFrame--;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          _onAnimationComplete();
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
          _onAnimationComplete();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          _onAnimationComplete();
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
          _onAnimationComplete();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          _onAnimationComplete();
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
          _onAnimationComplete();
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
        }
      }
    }
  }

  function _onAnimationComplete():Void
  {
    if (currentAnimation != null)
    {
      onAnimationComplete.dispatch(currentAnimation);
    }
    else
    {
      onAnimationComplete.dispatch('');
    }
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  function _onAnimationLoop():Void
  {
    if (currentAnimation != null)
    {
      onAnimationLoop.dispatch(currentAnimation);
    }
    else
    {
      onAnimationLoop.dispatch('');
    }
  }

=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  var prevFrames:Map<Int, FlxFrame> = [];

  public function replaceFrameGraphic(index:Int, ?graphic:FlxGraphicAsset):Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
=======
    if (graphic == null || !Assets.exists(graphic))
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (graphic == null || !Assets.exists(graphic))
=======
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
=======
    if (graphic == null || !Assets.exists(graphic))
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (graphic == null || !Assets.exists(graphic))
=======
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
=======
    if (graphic == null || !Assets.exists(graphic))
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var cond = false;

    if (graphic == null) cond = true;
    else
    {
      if ((graphic is String)) cond = !Assets.exists(graphic)
      else
        cond = false;
    }
    if (cond)
=======
    if (graphic == null || !Assets.exists(graphic))
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    {
      var prevFrame:Null<FlxFrame> = prevFrames.get(index);
      if (prevFrame == null) return;

      prevFrame.copyTo(frames.getByIndex(index));
      return;
    }

    var prevFrame:FlxFrame = prevFrames.get(index) ?? frames.getByIndex(index).copyTo();
    prevFrames.set(index, prevFrame);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    @:nullSafety(Off) // TODO: Remove this once flixel.system.frontEnds.BitmapFrontEnd has been null safed
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    var frame = FlxG.bitmap.add(graphic).imageFrame.frame;
    frame.copyTo(frames.getByIndex(index));

    // Additional sizing fix.
    @:privateAccess
    if (true)
    {
      var frame = frames.getByIndex(index);
      frame.tileMatrix[0] = prevFrame.frame.width / frame.frame.width;
      frame.tileMatrix[3] = prevFrame.frame.height / frame.frame.height;
    }
  }

  public function getBasePosition():Null<FlxPoint>
  {
    // var stagePos = new FlxPoint(anim.stageInstance.matrix.tx, anim.stageInstance.matrix.ty);
    var instancePos = new FlxPoint(anim.curInstance.matrix.tx, anim.curInstance.matrix.ty);
    var firstElement = anim.curSymbol.timeline?.get(0)?.get(0)?.get(0);
    if (firstElement == null) return instancePos;
    var firstElementPos = new FlxPoint(firstElement.matrix.tx, firstElement.matrix.ty);

    return instancePos + firstElementPos;
  }

  public function getPivotPosition():Null<FlxPoint>
  {
    return anim.curInstance.symbol.transformationPoint;
  }

  public override function destroy():Void
  {
    for (prevFrameId in prevFrames.keys())
    {
      replaceFrameGraphic(prevFrameId, null);
    }

    super.destroy();
  }
}
