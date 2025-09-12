<<<<<<< HEAD
package funkin.data.notestyle;

import funkin.play.notes.notestyle.NoteStyle;
import funkin.play.notes.notestyle.ScriptedNoteStyle;
import funkin.data.notestyle.NoteStyleData;

class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData>
{
  /**
   * The current version string for the note style data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateNoteStyleData()` function.
   */
  public static final NOTE_STYLE_DATA_VERSION:thx.semver.Version = "1.1.0";

  public static final NOTE_STYLE_DATA_VERSION_RULE:thx.semver.VersionRule = "1.1.x";

  public static var instance(get, never):NoteStyleRegistry;
  static var _instance:Null<NoteStyleRegistry> = null;

  static function get_instance():NoteStyleRegistry
  {
    if (_instance == null) _instance = new NoteStyleRegistry();
    return _instance;
  }

  public function new()
  {
    super('NOTESTYLE', 'notestyles', NOTE_STYLE_DATA_VERSION_RULE);
  }

  public function fetchDefault():NoteStyle
  {
    return fetchEntry(Constants.DEFAULT_NOTE_STYLE);
  }

  /**
   * Read, parse, and validate the JSON data and produce the corresponding data object.
   */
  public function parseEntryData(id:String):Null<NoteStyleData>
  {
    // JsonParser does not take type parameters,
    // otherwise this function would be in BaseRegistry.
    var parser = new json2object.JsonParser<NoteStyleData>();
    parser.ignoreUnknownVariables = false;

    switch (loadEntryFile(id))
    {
      case {fileName: fileName, contents: contents}:
        parser.fromJson(contents, fileName);
      default:
        return null;
    }

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, id);
      return null;
    }
    return parser.value;
  }

  /**
   * Parse and validate the JSON data and produce the corresponding data object.
   *
   * NOTE: Must be implemented on the implementation class.
   * @param contents The JSON as a string.
   * @param fileName An optional file name for error reporting.
   */
  public function parseEntryDataRaw(contents:String, ?fileName:String):Null<NoteStyleData>
  {
    var parser = new json2object.JsonParser<NoteStyleData>();
    parser.ignoreUnknownVariables = false;
    parser.fromJson(contents, fileName);

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, fileName);
      return null;
    }
    return parser.value;
  }

  function createScriptedEntry(clsName:String):NoteStyle
  {
    return ScriptedNoteStyle.init(clsName, "unknown");
  }

  function getScriptedClassNames():Array<String>
  {
    return ScriptedNoteStyle.listScriptClasses();
  }
}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

typedef NoteStyleEntryParams = {}
||||||| parent of 76e5592a (Add files via upload)
=======
package funkin.data.notestyle;

import funkin.play.notes.notestyle.NoteStyle;
import funkin.play.notes.notestyle.ScriptedNoteStyle;
import funkin.data.notestyle.NoteStyleData;

<<<<<<< HEAD
@:nullSafety
class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData, NoteStyleEntryParams> implements ISingleton implements DefaultRegistryImpl
||||||| cf89d672
@:nullSafety
class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData> implements ISingleton implements DefaultRegistryImpl
=======
class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData>
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
{
  /**
   * The current version string for the note style data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateNoteStyleData()` function.
   */
  public static final NOTE_STYLE_DATA_VERSION:thx.semver.Version = "1.1.0";

  public static final NOTE_STYLE_DATA_VERSION_RULE:thx.semver.VersionRule = "1.1.x";

  public static var instance(get, never):NoteStyleRegistry;
  static var _instance:Null<NoteStyleRegistry> = null;

  static function get_instance():NoteStyleRegistry
  {
    if (_instance == null) _instance = new NoteStyleRegistry();
    return _instance;
  }

  public function new()
  {
    super('NOTESTYLE', 'notestyles', NOTE_STYLE_DATA_VERSION_RULE);
  }

  public function fetchDefault():NoteStyle
  {
    return fetchEntry(Constants.DEFAULT_NOTE_STYLE);
  }

  /**
   * Read, parse, and validate the JSON data and produce the corresponding data object.
   */
  public function parseEntryData(id:String):Null<NoteStyleData>
  {
    // JsonParser does not take type parameters,
    // otherwise this function would be in BaseRegistry.
    var parser = new json2object.JsonParser<NoteStyleData>();
    parser.ignoreUnknownVariables = false;

    switch (loadEntryFile(id))
    {
      case {fileName: fileName, contents: contents}:
        parser.fromJson(contents, fileName);
      default:
        return null;
    }

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, id);
      return null;
    }
    return parser.value;
  }

  /**
   * Parse and validate the JSON data and produce the corresponding data object.
   *
   * NOTE: Must be implemented on the implementation class.
   * @param contents The JSON as a string.
   * @param fileName An optional file name for error reporting.
   */
  public function parseEntryDataRaw(contents:String, ?fileName:String):Null<NoteStyleData>
  {
    var parser = new json2object.JsonParser<NoteStyleData>();
    parser.ignoreUnknownVariables = false;
    parser.fromJson(contents, fileName);

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, fileName);
      return null;
    }
    return parser.value;
  }

  function createScriptedEntry(clsName:String):NoteStyle
  {
    return ScriptedNoteStyle.init(clsName, "unknown");
  }

  function getScriptedClassNames():Array<String>
  {
    return ScriptedNoteStyle.listScriptClasses();
  }
}
<<<<<<< HEAD
>>>>>>> 76e5592a (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

typedef NoteStyleEntryParams = {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

typedef NoteStyleEntryParams = {}
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

typedef NoteStyleEntryParams = {}
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

typedef NoteStyleEntryParams = {}
=======
>>>>>>> cd960b0a (idk7)
