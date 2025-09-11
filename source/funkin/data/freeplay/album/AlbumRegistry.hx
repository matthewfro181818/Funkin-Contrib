<<<<<<< HEAD
package funkin.data.freeplay.album;

import funkin.ui.freeplay.Album;
import funkin.data.freeplay.album.AlbumData;
import funkin.ui.freeplay.ScriptedAlbum;

class AlbumRegistry extends BaseRegistry<Album, AlbumData>
{
  /**
   * The current version string for the album data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateAlbumData()` function.
   */
  public static final ALBUM_DATA_VERSION:thx.semver.Version = '1.0.0';

  public static final ALBUM_DATA_VERSION_RULE:thx.semver.VersionRule = '1.0.x';

  public static final instance:AlbumRegistry = new AlbumRegistry();

  public function new()
  {
    super('ALBUM', 'ui/freeplay/albums', ALBUM_DATA_VERSION_RULE);
  }

<<<<<<< HEAD
typedef AlbumEntryParams = {}
||||||| parent of 76e5592a (Add files via upload)
=======
package funkin.data.freeplay.album;

import funkin.ui.freeplay.Album;
import funkin.data.freeplay.album.AlbumData;
import funkin.ui.freeplay.ScriptedAlbum;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

@:nullSafety
class AlbumRegistry extends BaseRegistry<Album, AlbumData, AlbumEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the album data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateAlbumData()` function.
   */
  public static final ALBUM_DATA_VERSION:thx.semver.Version = '1.0.0';

  public static final ALBUM_DATA_VERSION_RULE:thx.semver.VersionRule = '1.0.x';

  public function new()
  {
    super('ALBUM', 'ui/freeplay/albums', ALBUM_DATA_VERSION_RULE);
  }
}
<<<<<<< HEAD
>>>>>>> 76e5592a (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

typedef AlbumEntryParams = {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
typedef AlbumEntryParams = {}
=======
  /**
   * Read, parse, and validate the JSON data and produce the corresponding data object.
   * @param id The ID of the entry to load.
   * @return The parsed data object.
   */
  public function parseEntryData(id:String):Null<AlbumData>
  {
    // JsonParser does not take type parameters,
    // otherwise this function would be in BaseRegistry.
    var parser:json2object.JsonParser<AlbumData> = new json2object.JsonParser<AlbumData>();
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
   * @return The parsed data object.
   */
  public function parseEntryDataRaw(contents:String, ?fileName:String):Null<AlbumData>
  {
    var parser:json2object.JsonParser<AlbumData> = new json2object.JsonParser<AlbumData>();
    parser.ignoreUnknownVariables = false;
    parser.fromJson(contents, fileName);

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, fileName);
      return null;
    }
    return parser.value;
  }

  function createScriptedEntry(clsName:String):Album
  {
    return ScriptedAlbum.init(clsName, 'unknown');
  }

  function getScriptedClassNames():Array<String>
  {
    return ScriptedAlbum.listScriptClasses();
  }
}
>>>>>>> 8a1f54ca (lol8)
