<<<<<<< HEAD
package funkin.data.notestyle;

import funkin.play.notes.notestyle.NoteStyle;
import funkin.play.notes.notestyle.ScriptedNoteStyle;
import funkin.data.notestyle.NoteStyleData;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

@:nullSafety
class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData, NoteStyleEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the note style data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateNoteStyleData()` function.
   */
  public static final NOTE_STYLE_DATA_VERSION:thx.semver.Version = "1.1.0";

  public static final NOTE_STYLE_DATA_VERSION_RULE:thx.semver.VersionRule = ">=1.0.0 <1.2.0";

  public function new()
  {
    super('NOTESTYLE', 'notestyles', NOTE_STYLE_DATA_VERSION_RULE);
  }

  public function fetchDefault():NoteStyle
  {
    var notestyle:Null<NoteStyle> = fetchEntry(Constants.DEFAULT_NOTE_STYLE);
    if (notestyle == null) throw 'Default notestyle was null! This should not happen!';
    return notestyle;
  }
}
<<<<<<< HEAD
<<<<<<< HEAD

typedef NoteStyleEntryParams = {}
||||||| parent of 76e5592a (Add files via upload)
=======
package funkin.data.notestyle;

import funkin.play.notes.notestyle.NoteStyle;
import funkin.play.notes.notestyle.ScriptedNoteStyle;
import funkin.data.notestyle.NoteStyleData;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

@:nullSafety
class NoteStyleRegistry extends BaseRegistry<NoteStyle, NoteStyleData, NoteStyleEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the note style data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateNoteStyleData()` function.
   */
  public static final NOTE_STYLE_DATA_VERSION:thx.semver.Version = "1.1.0";

  public static final NOTE_STYLE_DATA_VERSION_RULE:thx.semver.VersionRule = ">=1.0.0 <1.2.0";

  public function new()
  {
    super('NOTESTYLE', 'notestyles', NOTE_STYLE_DATA_VERSION_RULE);
  }

  public function fetchDefault():NoteStyle
  {
    var notestyle:Null<NoteStyle> = fetchEntry(Constants.DEFAULT_NOTE_STYLE);
    if (notestyle == null) throw 'Default notestyle was null! This should not happen!';
    return notestyle;
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
