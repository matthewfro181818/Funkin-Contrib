package funkin.play.character;

import funkin.modding.events.ScriptEvent;
import funkin.util.assets.FlxAnimationUtil;
import flixel.graphics.frames.FlxFramesCollection;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.play.character.CharacterData.CharacterRenderType;
=======
import funkin.data.character.CharacterData.CharacterRenderType;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.data.character.CharacterData.CharacterRenderType;
=======
import funkin.play.character.CharacterData.CharacterRenderType;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.play.character.CharacterData.CharacterRenderType;
=======
import funkin.data.character.CharacterData.CharacterRenderType;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.data.character.CharacterData.CharacterRenderType;
=======
import funkin.play.character.CharacterData.CharacterRenderType;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
import funkin.play.character.CharacterData.CharacterRenderType;
=======
import funkin.data.character.CharacterData.CharacterRenderType;
>>>>>>> cd960b0a (idk7)

/**
 * A SparrowCharacter is a Character which is rendered by
 * displaying an animation derived from a SparrowV2 atlas spritesheet file.
 *
 * BaseCharacter has game logic, SparrowCharacter has only rendering logic.
 * KEEP THEM SEPARATE!
 */
class SparrowCharacter extends BaseCharacter
{
  public function new(id:String)
  {
    super(id, CharacterRenderType.Sparrow);
  }

  override function onCreate(event:ScriptEvent):Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
=======
    trace('Creating Sparrow character: ' + this.characterId);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    trace('Creating Sparrow character: ' + this.characterId);
=======
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
=======
    trace('Creating Sparrow character: ' + this.characterId);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    trace('Creating Sparrow character: ' + this.characterId);
=======
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
=======
    trace('Creating Sparrow character: ' + this.characterId);
>>>>>>> cd960b0a (idk7)

    loadSpritesheet();
    loadAnimations();

    super.onCreate(event);
  }

  function loadSpritesheet()
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));
||||||| parent of 8a1f54ca (lol8)
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));
=======
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');
=======
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));
=======
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');
>>>>>>> cd960b0a (idk7)

    var tex:FlxFramesCollection = Paths.getSparrowAtlas(_data.assetPaths[0]);
    if (tex == null)
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
=======
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');
||||||| parent of b150c43d (lol4)
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');
=======
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));
>>>>>>> b150c43d (lol4)

    var tex:FlxFramesCollection = Paths.getSparrowAtlas(_data.assetPath);
    if (tex == null)
    {
<<<<<<< HEAD
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
=======
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
=======
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
=======
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
=======
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
>>>>>>> cd960b0a (idk7)
      return;
    }

    this.frames = tex;

    if (_data.isPixel)
    {
      this.isPixel = true;
      this.antialiasing = false;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
=======
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
=======
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
=======
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
=======
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      // pixelPerfectRender = true;
      // pixelPerfectPosition = true;
=======
      pixelPerfectRender = true;
      pixelPerfectPosition = true;
>>>>>>> cd960b0a (idk7)
    }
    else
    {
      this.isPixel = false;
      this.antialiasing = true;
    }

    this.setScale(_data.scale);
  }

  function loadAnimations()
  {
    trace('[SPARROWCHAR] Loading ${_data.animations.length} animations for ${characterId}');

    FlxAnimationUtil.addAtlasAnimations(this, _data.animations);

    for (anim in _data.animations)
    {
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
    trace('[SPARROWCHAR] Successfully loaded ${animNames.length} animations for ${characterId}');
  }
}
