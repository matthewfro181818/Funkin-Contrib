package funkin.play.character;

import funkin.modding.events.ScriptEvent;
import funkin.util.assets.FlxAnimationUtil;
import flixel.graphics.frames.FlxFramesCollection;
<<<<<<< HEAD
import funkin.play.character.CharacterData.CharacterRenderType;
=======
import funkin.data.character.CharacterData.CharacterRenderType;
>>>>>>> e11c5f8d (Add files via upload)

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
    // Display a custom scope for debugging purposes.
    #if FEATURE_DEBUG_TRACY
    cpp.vm.tracy.TracyProfiler.zoneScoped('SparrowCharacter.create(${this.characterId})');
    #end
=======
    trace('Creating Sparrow character: ' + this.characterId);
>>>>>>> e11c5f8d (Add files via upload)

    loadSpritesheet();
    loadAnimations();

    super.onCreate(event);
  }

  function loadSpritesheet()
  {
<<<<<<< HEAD
    trace('Loading assets for Sparrow character "${characterId}"', flixel.util.FlxColor.fromString("#89CFF0"));

    var tex:FlxFramesCollection = Paths.getSparrowAtlas(_data.assetPath);
    if (tex == null)
    {
      trace('Could not load Sparrow sprite: ${_data.assetPath}');
=======
    trace('[SPARROWCHAR] Loading spritesheet ${_data.assetPaths[0]} for ${characterId}');

    var tex:FlxFramesCollection = Paths.getSparrowAtlas(_data.assetPaths[0]);
    if (tex == null)
    {
      trace('Could not load Sparrow sprite: ${_data.assetPaths[0]}');
>>>>>>> e11c5f8d (Add files via upload)
      return;
    }

    this.frames = tex;

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
