package funkin.play.character;

import flixel.graphics.frames.FlxAtlasFrames;
import flixel.graphics.frames.FlxFramesCollection;
import funkin.modding.events.ScriptEvent;
import funkin.util.assets.FlxAnimationUtil;
<<<<<<< HEAD
import funkin.play.character.CharacterData.CharacterRenderType;
=======
import funkin.data.character.CharacterData.CharacterRenderType;
>>>>>>> e11c5f8d (Add files via upload)

/**
 * For some characters which use Sparrow atlases, the spritesheets need to be split
 * into multiple files. This character renderer concatenates these together into a single sprite.
 *
 * Examples in base game include BF Holding GF (most of the sprites are in one file
 * but the death animation is in a separate file).
 * Only example I can think of in mods is Tricky (which has a separate file for each animation).
 *
 * BaseCharacter has game logic, MultiSparrowCharacter has only rendering logic.
 * KEEP THEM SEPARATE!
 */
class MultiSparrowCharacter extends BaseCharacter
{
  public function new(id:String)
  {
    super(id, CharacterRenderType.MultiSparrow);
  }

  override function onCreate(event:ScriptEvent):Void
  {
<<<<<<< HEAD
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('MultiSparrowCharacter.create(${this.characterId})');
    #end
=======
    trace('Creating Multi-Sparrow character: ' + this.characterId);
>>>>>>> e11c5f8d (Add files via upload)

    buildSprites();
    super.onCreate(event);
  }

  function buildSprites():Void
  {
    buildSpritesheet();
    buildAnimations();

    if (_data.isPixel)
    {
      this.isPixel = true;
      this.antialiasing = false;
<<<<<<< HEAD
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
=======
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
>>>>>>> e11c5f8d (Add files via upload)
    }
    else
    {
      this.isPixel = false;
      this.antialiasing = true;
    }
  }

  function buildSpritesheet():Void
  {
<<<<<<< HEAD
    trace('Loading assets for Multi-Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));

    var assetList = [];
    for (anim in _data.animations)
    {
      if (anim.assetPath != null && !assetList.contains(anim.assetPath))
      {
        assetList.push(anim.assetPath);
      }
    }

    var texture:FlxAtlasFrames = Paths.getSparrowAtlas(_data.assetPath);

    if (texture == null)
    {
      trace('Multi-Sparrow atlas could not load PRIMARY texture: ${_data.assetPath}');
      FlxG.log.error('Multi-Sparrow atlas could not load PRIMARY texture: ${_data.assetPath}');
=======
    var texture:FlxAtlasFrames = Paths.getSparrowAtlas(_data.assetPaths[0]);

    if (texture == null)
    {
      trace('Multi-Sparrow atlas could not load PRIMARY texture: ${_data.assetPaths[0]}');
      FlxG.log.error('Multi-Sparrow atlas could not load PRIMARY texture: ${_data.assetPaths[0]}');
>>>>>>> e11c5f8d (Add files via upload)
      return;
    }
    else
    {
<<<<<<< HEAD
      trace('Creating multi-sparrow atlas: ${_data.assetPath}');
      texture.parent.destroyOnNoUse = false;
    }

    for (asset in assetList)
    {
=======
      trace('Creating multi-sparrow atlas: ${_data.assetPaths[0]}');
      texture.parent.destroyOnNoUse = false;
    }

    for (i => asset in _data.assetPaths)
    {
      if (i == 0)
      {
        continue;
      }

>>>>>>> e11c5f8d (Add files via upload)
      var subTexture:FlxAtlasFrames = Paths.getSparrowAtlas(asset);
      // If we don't do this, the unused textures will be removed as soon as they're loaded.

      if (subTexture == null)
      {
        trace('Multi-Sparrow atlas could not load subtexture: ${asset}');
<<<<<<< HEAD
=======
        continue;
>>>>>>> e11c5f8d (Add files via upload)
      }
      else
      {
        trace('Concatenating multi-sparrow atlas: ${asset}');
<<<<<<< HEAD
        subTexture.parent.destroyOnNoUse = false;
        FunkinMemory.cacheTexture(Paths.image(asset));
=======
>>>>>>> e11c5f8d (Add files via upload)
      }

      texture.addAtlas(subTexture);
    }

    this.frames = texture;
    this.setScale(_data.scale);
  }

  function buildAnimations()
  {
    trace('[MULTISPARROWCHAR] Loading ${_data.animations.length} animations for ${characterId}');

    // We need to swap to the proper frame collection before adding the animations, I think?
    for (anim in _data.animations)
    {
      FlxAnimationUtil.addAtlasAnimation(this, anim);

      if (anim.offsets == null)
      {
        setAnimationOffsets(anim.name, 0, 0);
      }
      else
      {
        setAnimationOffsets(anim.name, anim.offsets[0], anim.offsets[1]);
      }
    }

    var animNames = this.animation.getNameList();
    trace('[MULTISPARROWCHAR] Successfully loaded ${animNames.length} animations for ${characterId}');
  }

  public override function playAnimation(name:String, restart:Bool = false, ignoreOther:Bool = false, reverse:Bool = false):Void
  {
<<<<<<< HEAD
=======
    // Make sure we ignore other animations if we're currently playing a forced one,
    // unless we're forcing a new animation.
    if (!this.canPlayOtherAnims && !ignoreOther) return;

>>>>>>> e11c5f8d (Add files via upload)
    super.playAnimation(name, restart, ignoreOther, reverse);
  }
}
