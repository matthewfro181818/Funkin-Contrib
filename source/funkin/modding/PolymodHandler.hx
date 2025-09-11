package funkin.modding;

import polymod.fs.ZipFileSystem;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
=======
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerRegistry;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerRegistry;
=======
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
=======
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerRegistry;
>>>>>>> 8a1f54ca (lol8)
import funkin.data.event.SongEventRegistry;
import funkin.data.story.level.LevelRegistry;
import funkin.data.notestyle.NoteStyleRegistry;
import funkin.play.notes.notekind.NoteKindManager;
import funkin.data.song.SongRegistry;
import funkin.data.freeplay.player.PlayerRegistry;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.data.freeplay.style.FreeplayStyleRegistry;
||||||| parent of 8a1f54ca (lol8)
import funkin.data.freeplay.style.FreeplayStyleRegistry;
=======
>>>>>>> 8a1f54ca (lol8)
import funkin.data.stage.StageRegistry;
import funkin.data.freeplay.album.AlbumRegistry;
import funkin.modding.module.ModuleHandler;
<<<<<<< HEAD
import funkin.play.character.CharacterData.CharacterDataParser;
=======
||||||| parent of b150c43d (lol4)
=======
import funkin.data.freeplay.style.FreeplayStyleRegistry;
>>>>>>> b150c43d (lol4)
import funkin.data.stage.StageRegistry;
import funkin.data.stickers.StickerRegistry;
import funkin.data.freeplay.album.AlbumRegistry;
import funkin.modding.module.ModuleHandler;
<<<<<<< HEAD
import funkin.data.character.CharacterRegistry;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.data.character.CharacterRegistry;
=======
import funkin.play.character.CharacterData.CharacterDataParser;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.play.character.CharacterData.CharacterDataParser;
=======
import funkin.data.character.CharacterRegistry;
>>>>>>> 8a1f54ca (lol8)
import funkin.save.Save;
import funkin.util.FileUtil;
import funkin.util.macro.ClassMacro;
import polymod.backends.PolymodAssets.PolymodAssetType;
import polymod.format.ParseRules.TextFileFormat;
import polymod.Polymod;

/**
 * A class for interacting with Polymod, the atomic modding framework for Haxe.
 */
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
class PolymodHandler
{
  /**
   * The API version for the current version of the game. Since 0.5.0, we've just made this the game version!
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * Minor updates rarely impact mods but major versions sometimes do.
||||||| parent of 8a1f54ca (lol8)
   * Minor updates rarely impact mods but major versions sometimes do.
=======
   * Minor updates rarely impact mods but major versions often do.
>>>>>>> 8a1f54ca (lol8)
   */
<<<<<<< HEAD
  public static var API_VERSION(get, never):String;

  static function get_API_VERSION():String
  {
    return Constants.VERSION;
  }
=======
   * Minor updates rarely impact mods but major versions often do.
||||||| parent of b150c43d (lol4)
   * Minor updates rarely impact mods but major versions often do.
=======
   * Minor updates rarely impact mods but major versions sometimes do.
>>>>>>> b150c43d (lol4)
   */
<<<<<<< HEAD
  // static final API_VERSION:String = Constants.VERSION;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  // static final API_VERSION:String = Constants.VERSION;
=======
  public static var API_VERSION(get, never):String;

  static function get_API_VERSION():String
  {
    return Constants.VERSION;
  }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static var API_VERSION(get, never):String;

  static function get_API_VERSION():String
  {
    return Constants.VERSION;
  }
=======
  // static final API_VERSION:String = Constants.VERSION;
>>>>>>> 8a1f54ca (lol8)

  /**
   * The Semantic Versioning rule
   * Indicates which mods are compatible with this version of the game.
   * Using more complex rules allows mods from older compatible versions to stay functioning,
   * while preventing mods made for future versions from being installed.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static final API_VERSION_RULE:String = ">=0.6.3 <0.8.0";
=======
  static final API_VERSION_RULE:String = ">=0.5.0 <0.6.0";
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  static final API_VERSION_RULE:String = ">=0.5.0 <0.6.0";
=======
  public static final API_VERSION_RULE:String = ">=0.6.3 <0.8.0";
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static final API_VERSION_RULE:String = ">=0.6.3 <0.8.0";
=======
  static final API_VERSION_RULE:String = ">=0.5.0 <0.6.0";
>>>>>>> 8a1f54ca (lol8)

  /**
   * Where relative to the executable that mods are located.
   */
  static final MOD_FOLDER:String =
    #if (REDIRECT_ASSETS_FOLDER && macos)
    '../../../../../../../example_mods'
    #elseif REDIRECT_ASSETS_FOLDER
    '../../../../example_mods'
    #else
    'mods'
    #end;

  static final CORE_FOLDER:Null<String> =
    #if (REDIRECT_ASSETS_FOLDER && macos)
    '../../../../../../../assets'
    #elseif REDIRECT_ASSETS_FOLDER
    '../../../../assets'
    #else
    null
    #end;

  public static var loadedModIds:Array<String> = [];

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  // Use SysZipFileSystem on native and MemoryZipFilesystem on web.
=======
  // Use SysZipFileSystem on desktop and MemoryZipFilesystem on web.
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  // Use SysZipFileSystem on desktop and MemoryZipFilesystem on web.
=======
  // Use SysZipFileSystem on native and MemoryZipFilesystem on web.
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  // Use SysZipFileSystem on native and MemoryZipFilesystem on web.
=======
  // Use SysZipFileSystem on desktop and MemoryZipFilesystem on web.
>>>>>>> 8a1f54ca (lol8)
  static var modFileSystem:Null<ZipFileSystem> = null;

  /**
   * If the mods folder doesn't exist, create it.
   */
  public static function createModRoot():Void
  {
    FileUtil.createDirIfNotExists(MOD_FOLDER);
  }

  /**
   * Loads the game with ALL mods enabled with Polymod.
   */
  public static function loadAllMods():Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if sys
||||||| parent of b150c43d (lol4)
=======
    #if sys
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #if sys
=======
>>>>>>> 8a1f54ca (lol8)
    // Create the mod root if it doesn't exist.
    createModRoot();
<<<<<<< HEAD
<<<<<<< HEAD
    #end
=======
    // Create the mod root if it doesn't exist.
    createModRoot();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    #end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #end
=======
>>>>>>> 8a1f54ca (lol8)
    trace('Initializing Polymod (using all mods)...');
    loadModsById(getAllModIds());
  }

  /**
   * Loads the game with configured mods enabled with Polymod.
   */
  public static function loadEnabledMods():Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if sys
||||||| parent of 8a1f54ca (lol8)
    #if sys
=======
>>>>>>> 8a1f54ca (lol8)
    // Create the mod root if it doesn't exist.
    createModRoot();
<<<<<<< HEAD
    #end
=======
||||||| parent of b150c43d (lol4)
=======
    #if sys
>>>>>>> b150c43d (lol4)
    // Create the mod root if it doesn't exist.
    createModRoot();
<<<<<<< HEAD

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)

=======
    #end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #end
=======

>>>>>>> 8a1f54ca (lol8)
    trace('Initializing Polymod (using configured mods)...');
    loadModsById(Save.instance.enabledModIds);
  }

  /**
   * Loads the game without any mods enabled with Polymod.
   */
  public static function loadNoMods():Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    #if sys
||||||| parent of 8a1f54ca (lol8)
    #if sys
=======
>>>>>>> 8a1f54ca (lol8)
    // Create the mod root if it doesn't exist.
    createModRoot();
<<<<<<< HEAD
    #end
=======
||||||| parent of b150c43d (lol4)
=======
    #if sys
>>>>>>> b150c43d (lol4)
    // Create the mod root if it doesn't exist.
    createModRoot();
<<<<<<< HEAD

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)

=======
    #end
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    #end
=======

>>>>>>> 8a1f54ca (lol8)
    // We still need to configure the debug print calls etc.
    trace('Initializing Polymod (using no mods)...');
    loadModsById([]);
  }

  /**
   * Load all the mods with the given ids.
   * @param ids The ORDERED list of mod ids to load.
   */
  public static function loadModsById(ids:Array<String>):Void
  {
    if (ids.length == 0)
    {
      trace('You attempted to load zero mods.');
    }
    else
    {
      trace('Attempting to load ${ids.length} mods...');
    }

    buildImports();

    if (modFileSystem == null) modFileSystem = buildFileSystem();

    var loadedModList:Array<ModMetadata> = polymod.Polymod.init(
      {
        // Root directory for all mods.
        modRoot: MOD_FOLDER,
        // The directories for one or more mods to load.
        dirs: ids,
        // Framework being used to load assets.
        framework: OPENFL,
        // The current version of our API.
        apiVersionRule: API_VERSION_RULE,
        // Call this function any time an error occurs.
        errorCallback: PolymodErrorHandler.onPolymodError,
        // Enforce semantic version patterns for each mod.
        // modVersions: null,
        // A map telling Polymod what the asset type is for unfamiliar file extensions.
        // extensionMap: [],

        customFilesystem: modFileSystem,

        frameworkParams: buildFrameworkParams(),

        // List of filenames to ignore in mods. Use the default list to ignore the metadata file, etc.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        ignoredFiles: buildIgnoreList(),
=======
        ignoredFiles: Polymod.getDefaultIgnoreList(),
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        ignoredFiles: Polymod.getDefaultIgnoreList(),
=======
        ignoredFiles: buildIgnoreList(),
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        ignoredFiles: buildIgnoreList(),
=======
        ignoredFiles: Polymod.getDefaultIgnoreList(),
>>>>>>> 8a1f54ca (lol8)

        // Parsing rules for various data formats.
        parseRules: buildParseRules(),

        skipDependencyErrors: true,

        // Parse hxc files and register the scripted classes in them.
        useScriptedClasses: true,
        loadScriptsAsync: #if html5 true #else false #end,
      });

    if (loadedModList == null)
    {
      trace('An error occurred! Failed when loading mods!');
    }
    else
    {
      if (loadedModList.length == 0)
      {
        trace('Mod loading complete. We loaded no mods / ${ids.length} mods.');
      }
      else
      {
        trace('Mod loading complete. We loaded ${loadedModList.length} / ${ids.length} mods.');
      }
    }

    loadedModIds = [];
    for (mod in loadedModList)
    {
      trace('  * ${mod.title} v${mod.modVersion} [${mod.id}]');
      loadedModIds.push(mod.id);
    }

    #if FEATURE_DEBUG_FUNCTIONS
    var fileList:Array<String> = Polymod.listModFiles(PolymodAssetType.IMAGE);
    trace('Installed mods have replaced ${fileList.length} images.');
    for (item in fileList)
    {
      trace('  * $item');
    }

    fileList = Polymod.listModFiles(PolymodAssetType.TEXT);
    trace('Installed mods have added/replaced ${fileList.length} text files.');
    for (item in fileList)
    {
      trace('  * $item');
    }

    fileList = Polymod.listModFiles(PolymodAssetType.AUDIO_MUSIC);
    trace('Installed mods have replaced ${fileList.length} music files.');
    for (item in fileList)
    {
      trace('  * $item');
    }

    fileList = Polymod.listModFiles(PolymodAssetType.AUDIO_SOUND);
    trace('Installed mods have replaced ${fileList.length} sound files.');
    for (item in fileList)
    {
      trace('  * $item');
    }

    fileList = Polymod.listModFiles(PolymodAssetType.AUDIO_GENERIC);
    trace('Installed mods have replaced ${fileList.length} generic audio files.');
    for (item in fileList)
    {
      trace('  * $item');
    }
    #end
  }

  static function buildFileSystem():polymod.fs.ZipFileSystem
  {
    polymod.Polymod.onError = PolymodErrorHandler.onPolymodError;
    return new ZipFileSystem(
      {
        modRoot: MOD_FOLDER,
        autoScan: true
      });
  }

  static function buildImports():Void
  {
    // Add default imports for common classes.
    Polymod.addDefaultImport(funkin.Assets);
    Polymod.addDefaultImport(funkin.Paths);

    // Add import aliases for certain classes.
    // NOTE: Scripted classes are automatically aliased to their parent class.
    Polymod.addImportAlias('flixel.math.FlxPoint', flixel.math.FlxPoint.FlxBasePoint);

    Polymod.addImportAlias('funkin.data.event.SongEventSchema', funkin.data.event.SongEventSchema.SongEventSchemaRaw);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
    Polymod.addImportAlias('funkin.play.character.CharacterDataParser', funkin.data.character.CharacterRegistry);

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    Polymod.addImportAlias('funkin.play.character.CharacterDataParser', funkin.data.character.CharacterRegistry);

=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
    Polymod.addImportAlias('funkin.play.character.CharacterDataParser', funkin.data.character.CharacterRegistry);

>>>>>>> 8a1f54ca (lol8)
    // `lime.utils.Assets` literally just has a private `resolveClass` function for some reason? so we replace it with our own.
    Polymod.addImportAlias('lime.utils.Assets', funkin.Assets);
    Polymod.addImportAlias('openfl.utils.Assets', funkin.Assets);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // Backward compatibility for certain scripted classes outside `funkin.modding.base`.
    Polymod.addImportAlias('funkin.modding.base.ScriptedFunkinSprite', funkin.graphics.ScriptedFunkinSprite);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatState', funkin.ui.ScriptedMusicBeatState);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatSubState', funkin.ui.ScriptedMusicBeatSubState);

    // Backward compatibility for some classes that moved.
    Polymod.addImportAlias('funkin.data.dialogue.conversation.ConversationRegistry', funkin.data.dialogue.ConversationRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.dialoguebox.DialogueBoxRegistry', funkin.data.dialogue.DialogueBoxRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.speaker.SpeakerRegistry', funkin.data.dialogue.SpeakerRegistry);

    // `funkin.util.FileUtil` has unrestricted access to the file system.
    Polymod.addImportAlias('funkin.util.FileUtil', funkin.util.FileUtilSandboxed);

    #if FEATURE_NEWGROUNDS
    // `funkin.api.newgrounds.Leaderboards` allows for submitting cheated scores.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Leaderboards', funkin.api.newgrounds.Leaderboards.LeaderboardsSandboxed);

    // `funkin.api.newgrounds.Medals` allows for unfair granting of medals.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Medals', funkin.api.newgrounds.Medals.MedalsSandboxed);

    // `funkin.api.newgrounds.NewgroundsClientSandboxed` allows for submitting cheated data.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.NewgroundsClient', funkin.api.newgrounds.NewgroundsClient.NewgroundsClientSandboxed);
    #end

    Polymod.addImportAlias('funkin.api.discord.DiscordClient', funkin.api.discord.DiscordClient.DiscordClientSandboxed);

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    // Backward compatibility for certain scripted classes outside `funkin.modding.base`.
    Polymod.addImportAlias('funkin.modding.base.ScriptedFunkinSprite', funkin.graphics.ScriptedFunkinSprite);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatState', funkin.ui.ScriptedMusicBeatState);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatSubState', funkin.ui.ScriptedMusicBeatSubState);

    // Backward compatibility for some classes that moved.
    Polymod.addImportAlias('funkin.data.dialogue.conversation.ConversationRegistry', funkin.data.dialogue.ConversationRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.dialoguebox.DialogueBoxRegistry', funkin.data.dialogue.DialogueBoxRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.speaker.SpeakerRegistry', funkin.data.dialogue.SpeakerRegistry);

    // `funkin.util.FileUtil` has unrestricted access to the file system.
    Polymod.addImportAlias('funkin.util.FileUtil', funkin.util.FileUtilSandboxed);

    #if FEATURE_NEWGROUNDS
    // `funkin.api.newgrounds.Leaderboards` allows for submitting cheated scores.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Leaderboards', funkin.api.newgrounds.Leaderboards.LeaderboardsSandboxed);

    // `funkin.api.newgrounds.Medals` allows for unfair granting of medals.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Medals', funkin.api.newgrounds.Medals.MedalsSandboxed);

    // `funkin.api.newgrounds.NewgroundsClientSandboxed` allows for submitting cheated data.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.NewgroundsClient', funkin.api.newgrounds.NewgroundsClient.NewgroundsClientSandboxed);
    #end

    Polymod.addImportAlias('funkin.api.discord.DiscordClient', funkin.api.discord.DiscordClient.DiscordClientSandboxed);

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // Backward compatibility for certain scripted classes outside `funkin.modding.base`.
    Polymod.addImportAlias('funkin.modding.base.ScriptedFunkinSprite', funkin.graphics.ScriptedFunkinSprite);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatState', funkin.ui.ScriptedMusicBeatState);
    Polymod.addImportAlias('funkin.modding.base.ScriptedMusicBeatSubState', funkin.ui.ScriptedMusicBeatSubState);

    // Backward compatibility for some classes that moved.
    Polymod.addImportAlias('funkin.data.dialogue.conversation.ConversationRegistry', funkin.data.dialogue.ConversationRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.dialoguebox.DialogueBoxRegistry', funkin.data.dialogue.DialogueBoxRegistry);
    Polymod.addImportAlias('funkin.data.dialogue.speaker.SpeakerRegistry', funkin.data.dialogue.SpeakerRegistry);

    // `funkin.util.FileUtil` has unrestricted access to the file system.
    Polymod.addImportAlias('funkin.util.FileUtil', funkin.util.FileUtilSandboxed);

    #if FEATURE_NEWGROUNDS
    // `funkin.api.newgrounds.Leaderboards` allows for submitting cheated scores.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Leaderboards', funkin.api.newgrounds.Leaderboards.LeaderboardsSandboxed);

    // `funkin.api.newgrounds.Medals` allows for unfair granting of medals.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.Medals', funkin.api.newgrounds.Medals.MedalsSandboxed);

    // `funkin.api.newgrounds.NewgroundsClientSandboxed` allows for submitting cheated data.
    // We still grant read-only access.
    Polymod.addImportAlias('funkin.api.newgrounds.NewgroundsClient', funkin.api.newgrounds.NewgroundsClient.NewgroundsClientSandboxed);
    #end

    Polymod.addImportAlias('funkin.api.discord.DiscordClient', funkin.api.discord.DiscordClient.DiscordClientSandboxed);

=======
>>>>>>> 8a1f54ca (lol8)
    // Add blacklisting for prohibited classes and packages.

    // `Sys`
    // Sys.command() can run malicious processes
    Polymod.blacklistImport('Sys');

    // `Reflect`
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // Reflect.callMethod() can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Reflect', funkin.util.ReflectUtil);
||||||| parent of 8a1f54ca (lol8)
    // Reflect.callMethod() can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Reflect', funkin.util.ReflectUtil);
=======
    // Reflect.callMethod() can access blacklisted packages
    Polymod.blacklistImport('Reflect');
>>>>>>> 8a1f54ca (lol8)

    // `Type`
<<<<<<< HEAD
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Type', funkin.util.ReflectUtil);
=======
    // Reflect.callMethod() can access blacklisted packages
    Polymod.blacklistImport('Reflect');
||||||| parent of b150c43d (lol4)
    // Reflect.callMethod() can access blacklisted packages
    Polymod.blacklistImport('Reflect');
=======
    // Reflect.callMethod() can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Reflect', funkin.util.ReflectUtil);
>>>>>>> b150c43d (lol4)

    // `Type`
<<<<<<< HEAD
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages
    Polymod.blacklistImport('Type');
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages
    Polymod.blacklistImport('Type');
=======
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Type', funkin.util.ReflectUtil);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages, but some functions are whitelisted
    Polymod.addImportAlias('Type', funkin.util.ReflectUtil);
=======
    // Type.createInstance(Type.resolveClass()) can access blacklisted packages
    Polymod.blacklistImport('Type');
>>>>>>> 8a1f54ca (lol8)

    // `cpp.Lib`
    // Lib.load() can load malicious DLLs
    Polymod.blacklistImport('cpp.Lib');

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // `haxe.Unserializer`
||||||| parent of 8a1f54ca (lol8)
    // `haxe.Unserializer`
=======
    // `Unserializer`
>>>>>>> 8a1f54ca (lol8)
    // Unserializer.DEFAULT_RESOLVER.resolveClass() can access blacklisted packages
<<<<<<< HEAD
    Polymod.blacklistImport('haxe.Unserializer');

    // `flixel.util.FlxSave`
    // FlxSave.resolveFlixelClasses() can access blacklisted packages
    Polymod.blacklistImport('flixel.util.FlxSave');

    // Disable access to AdMob Util
    Polymod.blacklistImport('funkin.mobile.util.AdMobUtil');

    // Disable access to In-App Purchases Util
    Polymod.blacklistImport('funkin.mobile.util.InAppPurchasesUtil');

    // Disable access to Admob Extension
    for (cls in ClassMacro.listClassesInPackage('extension.admob'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to AndroidTools Extension
    for (cls in ClassMacro.listClassesInPackage('extension.androidtools'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to IAPCore Extension
    for (cls in ClassMacro.listClassesInPackage('extension.iapcore'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to Haptics Extension
    for (cls in ClassMacro.listClassesInPackage('extension.haptics'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
=======
    // `Unserializer`
||||||| parent of b150c43d (lol4)
    // `Unserializer`
=======
    // `haxe.Unserializer`
>>>>>>> b150c43d (lol4)
    // Unserializer.DEFAULT_RESOLVER.resolveClass() can access blacklisted packages
<<<<<<< HEAD
    Polymod.blacklistImport('Unserializer');
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    Polymod.blacklistImport('Unserializer');
=======
    Polymod.blacklistImport('haxe.Unserializer');

    // `flixel.util.FlxSave`
    // FlxSave.resolveFlixelClasses() can access blacklisted packages
    Polymod.blacklistImport('flixel.util.FlxSave');

    // Disable access to AdMob Util
    Polymod.blacklistImport('funkin.mobile.util.AdMobUtil');

    // Disable access to In-App Purchases Util
    Polymod.blacklistImport('funkin.mobile.util.InAppPurchasesUtil');

    // Disable access to Admob Extension
    for (cls in ClassMacro.listClassesInPackage('extension.admob'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to AndroidTools Extension
    for (cls in ClassMacro.listClassesInPackage('extension.androidtools'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to IAPCore Extension
    for (cls in ClassMacro.listClassesInPackage('extension.iapcore'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to Haptics Extension
    for (cls in ClassMacro.listClassesInPackage('extension.haptics'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    Polymod.blacklistImport('haxe.Unserializer');

    // `flixel.util.FlxSave`
    // FlxSave.resolveFlixelClasses() can access blacklisted packages
    Polymod.blacklistImport('flixel.util.FlxSave');

    // Disable access to AdMob Util
    Polymod.blacklistImport('funkin.mobile.util.AdMobUtil');

    // Disable access to In-App Purchases Util
    Polymod.blacklistImport('funkin.mobile.util.InAppPurchasesUtil');

    // Disable access to Admob Extension
    for (cls in ClassMacro.listClassesInPackage('extension.admob'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to AndroidTools Extension
    for (cls in ClassMacro.listClassesInPackage('extension.androidtools'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to IAPCore Extension
    for (cls in ClassMacro.listClassesInPackage('extension.iapcore'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // Disable access to Haptics Extension
    for (cls in ClassMacro.listClassesInPackage('extension.haptics'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
=======
    Polymod.blacklistImport('Unserializer');
>>>>>>> 8a1f54ca (lol8)

    // `lime.system.CFFI`
    // Can load and execute compiled binaries.
    Polymod.blacklistImport('lime.system.CFFI');

    // `lime.system.JNI`
    // Can load and execute compiled binaries.
    Polymod.blacklistImport('lime.system.JNI');

    // `lime.system.System`
    // System.load() can load malicious DLLs
    Polymod.blacklistImport('lime.system.System');

    // `lime.utils.Assets`
    // Literally just has a private `resolveClass` function for some reason?
    Polymod.blacklistImport('lime.utils.Assets');
    Polymod.blacklistImport('openfl.utils.Assets');
    Polymod.blacklistImport('openfl.Lib');
    Polymod.blacklistImport('openfl.system.ApplicationDomain');
    Polymod.blacklistImport('openfl.net.SharedObject');

    // `openfl.desktop.NativeProcess`
    // Can load native processes on the host operating system.
    Polymod.blacklistImport('openfl.desktop.NativeProcess');

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // Contains critical private environment variables.
    Polymod.blacklistImport('funkin.util.macro.EnvironmentConfigMacro');

    // `funkin.api.*`
    // Contains functions which may allow for cheating and such.
    for (cls in ClassMacro.listClassesInPackage('funkin.api'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      if (polymod.hscript._internal.PolymodScriptClass.importOverrides.exists(className)) continue;
      Polymod.blacklistImport(className);
    }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    // Contains critical private environment variables.
    Polymod.blacklistImport('funkin.util.macro.EnvironmentConfigMacro');

    // `funkin.api.*`
    // Contains functions which may allow for cheating and such.
    for (cls in ClassMacro.listClassesInPackage('funkin.api'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      if (polymod.hscript._internal.PolymodScriptClass.importOverrides.exists(className)) continue;
      Polymod.blacklistImport(className);
    }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // Contains critical private environment variables.
    Polymod.blacklistImport('funkin.util.macro.EnvironmentConfigMacro');

    // `funkin.api.*`
    // Contains functions which may allow for cheating and such.
    for (cls in ClassMacro.listClassesInPackage('funkin.api'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      if (polymod.hscript._internal.PolymodScriptClass.importOverrides.exists(className)) continue;
      Polymod.blacklistImport(className);
    }

=======
>>>>>>> 8a1f54ca (lol8)
    // `polymod.*`
    // Contains functions which may allow for un-blacklisting other modules.
    for (cls in ClassMacro.listClassesInPackage('polymod'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // `hscript.*
    // Contains functions which may allow for interpreting unsanitized strings.
    for (cls in ClassMacro.listClassesInPackage('hscript'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `funkin.api.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('funkin.api.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `io.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('io.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    // `hscript.*
    // Contains functions which may allow for interpreting unsanitized strings.
    for (cls in ClassMacro.listClassesInPackage('hscript'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `funkin.api.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('funkin.api.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `io.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('io.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // `hscript.*
    // Contains functions which may allow for interpreting unsanitized strings.
    for (cls in ClassMacro.listClassesInPackage('hscript'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `funkin.api.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('funkin.api.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

    // `io.newgrounds.*`
    // Contains functions which allow for cheating medals and leaderboards.
    for (cls in ClassMacro.listClassesInPackage('io.newgrounds'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }

=======
>>>>>>> 8a1f54ca (lol8)
    // `sys.*`
    // Access to system utilities such as the file system.
    for (cls in ClassMacro.listClassesInPackage('sys'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

    // `funkin.util.macro.*`
    // CompiledClassList's get function allows access to sys and Newgrounds classes
    // None of the classes are suitable for mods anyway
    for (cls in ClassMacro.listClassesInPackage('funkin.util.macro'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
  }

  /**
   * Build a list of file paths that will be ignored in mods.
   */
  static function buildIgnoreList():Array<String>
  {
    var result = Polymod.getDefaultIgnoreList();

    result.push('.git');
    result.push('.gitignore');
    result.push('.gitattributes');
    result.push('README.md');

    return result;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

    // `funkin.util.macro.*`
    // CompiledClassList's get function allows access to sys and Newgrounds classes
    // None of the classes are suitable for mods anyway
    for (cls in ClassMacro.listClassesInPackage('funkin.util.macro'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
  }

  /**
   * Build a list of file paths that will be ignored in mods.
   */
  static function buildIgnoreList():Array<String>
  {
    var result = Polymod.getDefaultIgnoreList();

    result.push('.git');
    result.push('.gitignore');
    result.push('.gitattributes');
    result.push('README.md');

    return result;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

    // `funkin.util.macro.*`
    // CompiledClassList's get function allows access to sys and Newgrounds classes
    // None of the classes are suitable for mods anyway
    for (cls in ClassMacro.listClassesInPackage('funkin.util.macro'))
    {
      if (cls == null) continue;
      var className:String = Type.getClassName(cls);
      Polymod.blacklistImport(className);
    }
  }

  /**
   * Build a list of file paths that will be ignored in mods.
   */
  static function buildIgnoreList():Array<String>
  {
    var result = Polymod.getDefaultIgnoreList();

    result.push('.git');
    result.push('.gitignore');
    result.push('.gitattributes');
    result.push('README.md');

    return result;
=======
>>>>>>> 8a1f54ca (lol8)
  }

  static function buildParseRules():polymod.format.ParseRules
  {
    var output:polymod.format.ParseRules = polymod.format.ParseRules.getDefault();
    // Ensure TXT files have merge support.
    output.addType('txt', TextFileFormat.LINES);
    // Ensure script files have merge support.
    output.addType('hscript', TextFileFormat.PLAINTEXT);
    output.addType('hxs', TextFileFormat.PLAINTEXT);
    output.addType('hxc', TextFileFormat.PLAINTEXT);
    output.addType('hx', TextFileFormat.PLAINTEXT);

    // You can specify the format of a specific file, with file extension.
    // output.addFile("data/introText.txt", TextFileFormat.LINES)
    return output;
  }

  static inline function buildFrameworkParams():polymod.Polymod.FrameworkParams
  {
    return {
      assetLibraryPaths: [
        'default' => 'preload',
        'shared' => 'shared',
        'songs' => 'songs',
        'videos' => 'videos',
        'tutorial' => 'tutorial',
        'week1' => 'week1',
        'week2' => 'week2',
        'week3' => 'week3',
        'week4' => 'week4',
        'week5' => 'week5',
        'week6' => 'week6',
        'week7' => 'week7',
        'weekend1' => 'weekend1',
      ],
      coreAssetRedirect: CORE_FOLDER,
    }
  }

  /**
   * Retrieve a list of metadata for ALL installed mods, including disabled mods.
   * @return An array of mod metadata
   */
  public static function getAllMods():Array<ModMetadata>
  {
    trace('Scanning the mods folder...');

    if (modFileSystem == null) modFileSystem = buildFileSystem();

    var modMetadata:Array<ModMetadata> = Polymod.scan(
      {
        modRoot: MOD_FOLDER,
        apiVersionRule: API_VERSION_RULE,
        fileSystem: modFileSystem,
        errorCallback: PolymodErrorHandler.onPolymodError
      });
    trace('Found ${modMetadata.length} mods when scanning.');
    return modMetadata;
  }

  /**
   * Retrieve a list of ALL mod IDs, including disabled mods.
   * @return An array of mod IDs
   */
  public static function getAllModIds():Array<String>
  {
    var modIds:Array<String> = [for (i in getAllMods()) i.id];
    return modIds;
  }

  /**
   * Retrieve a list of metadata for all enabled mods.
   * @return An array of mod metadata
   */
  public static function getEnabledMods():Array<ModMetadata>
  {
    var modIds:Array<String> = Save.instance.enabledModIds;
    var modMetadata:Array<ModMetadata> = getAllMods();
    var enabledMods:Array<ModMetadata> = [];
    for (item in modMetadata)
    {
      if (modIds.indexOf(item.id) != -1)
      {
        enabledMods.push(item);
      }
    }
    return enabledMods;
  }

  /**
   * Clear and reload from disk all data assets.
   * Useful for "hot reloading" for fast iteration!
   */
  public static function forceReloadAssets():Void
  {
    // Forcibly clear scripts so that scripts can be edited.
    ModuleHandler.clearModuleCache();
    Polymod.clearScripts();

    // Forcibly reload Polymod so it finds any new files.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // This will also register all scripts.
||||||| parent of 8a1f54ca (lol8)
    // This will also register all scripts.
=======
>>>>>>> 8a1f54ca (lol8)
    // TODO: Replace this with loadEnabledMods().
    funkin.modding.PolymodHandler.loadAllMods();

<<<<<<< HEAD
=======
||||||| parent of b150c43d (lol4)
=======
    // This will also register all scripts.
>>>>>>> b150c43d (lol4)
    // TODO: Replace this with loadEnabledMods().
    funkin.modding.PolymodHandler.loadAllMods();

<<<<<<< HEAD
    // Reload scripted classes so stages and modules will update.
    Polymod.registerAllScriptClasses();

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    // Reload scripted classes so stages and modules will update.
    Polymod.registerAllScriptClasses();

=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
    // Reload scripted classes so stages and modules will update.
    Polymod.registerAllScriptClasses();

>>>>>>> 8a1f54ca (lol8)
    // Reload everything that is cached.
    // Currently this freezes the game for a second but I guess that's tolerable?

    // TODO: Reload event callbacks

    // These MUST be imported at the top of the file and not referred to by fully qualified name,
    // to ensure build macros work properly.
    SongEventRegistry.loadEventCache();

    SongRegistry.instance.loadEntries();
    LevelRegistry.instance.loadEntries();
    NoteStyleRegistry.instance.loadEntries();
    PlayerRegistry.instance.loadEntries();
    ConversationRegistry.instance.loadEntries();
    DialogueBoxRegistry.instance.loadEntries();
    SpeakerRegistry.instance.loadEntries();
    AlbumRegistry.instance.loadEntries();
    StageRegistry.instance.loadEntries();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    StickerRegistry.instance.loadEntries();
    FreeplayStyleRegistry.instance.loadEntries();
||||||| parent of 8a1f54ca (lol8)
    StickerRegistry.instance.loadEntries();
    FreeplayStyleRegistry.instance.loadEntries();
=======
>>>>>>> 8a1f54ca (lol8)

<<<<<<< HEAD
    CharacterDataParser.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
=======
||||||| parent of b150c43d (lol4)
=======
    StickerRegistry.instance.loadEntries();
    FreeplayStyleRegistry.instance.loadEntries();
>>>>>>> b150c43d (lol4)

<<<<<<< HEAD
    CharacterRegistry.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    CharacterRegistry.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
=======
    CharacterDataParser.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    CharacterDataParser.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
=======
    CharacterRegistry.loadCharacterCache(); // TODO: Migrate characters to BaseRegistry.
>>>>>>> 8a1f54ca (lol8)
    NoteKindManager.loadScripts();
    ModuleHandler.loadModuleCache();
  }
}
