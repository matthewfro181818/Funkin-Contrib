package funkin.play.notes.notekind;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.data.song.SongData.SongNoteData;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
import funkin.data.song.SongData.SongNoteData;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
import funkin.data.song.SongData.SongNoteData;
=======
>>>>>>> 8a1f54ca (lol8)
import funkin.modding.events.ScriptEventDispatcher;
import funkin.modding.events.ScriptEvent;
import funkin.ui.debug.charting.util.ChartEditorDropdowns;
import funkin.data.notestyle.NoteStyleRegistry;
import funkin.play.notes.notestyle.NoteStyle;
import funkin.play.notes.notekind.ScriptedNoteKind;
import funkin.play.notes.notekind.NoteKind.NoteKindParam;

class NoteKindManager
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * A map of all note kinds, keyed by their name.
   * This is used to retrieve note kinds by their name.
   */
  public static var noteKinds:Map<String, NoteKind> = [];

  /**
   * Retrieve a note kind by its name.
   * @param noteKind The name of the note kind.
   * @return The note kind, or null if it doesn't exist.
   */
  public static function getNoteKind(noteKind:String):Null<NoteKind>
  {
    return noteKinds.get(noteKind);
  }
=======
  static var noteKinds:Map<String, NoteKind> = [];
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  static var noteKinds:Map<String, NoteKind> = [];
=======
  /**
   * A map of all note kinds, keyed by their name.
   * This is used to retrieve note kinds by their name.
   */
  public static var noteKinds:Map<String, NoteKind> = [];

  /**
   * Retrieve a note kind by its name.
   * @param noteKind The name of the note kind.
   * @return The note kind, or null if it doesn't exist.
   */
  public static function getNoteKind(noteKind:String):Null<NoteKind>
  {
    return noteKinds.get(noteKind);
  }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  /**
   * A map of all note kinds, keyed by their name.
   * This is used to retrieve note kinds by their name.
   */
  public static var noteKinds:Map<String, NoteKind> = [];

  /**
   * Retrieve a note kind by its name.
   * @param noteKind The name of the note kind.
   * @return The note kind, or null if it doesn't exist.
   */
  public static function getNoteKind(noteKind:String):Null<NoteKind>
  {
    return noteKinds.get(noteKind);
  }
=======
  static var noteKinds:Map<String, NoteKind> = [];
>>>>>>> 8a1f54ca (lol8)

  public static function loadScripts():Void
  {
    var scriptedClassName:Array<String> = ScriptedNoteKind.listScriptClasses();
    if (scriptedClassName.length > 0)
    {
      trace('Instantiating ${scriptedClassName.length} scripted note kind(s)...');
      for (scriptedClass in scriptedClassName)
      {
        try
        {
          var script:NoteKind = ScriptedNoteKind.init(scriptedClass, "unknown");
          trace(' Initialized scripted note kind: ${script.noteKind}');
          noteKinds.set(script.noteKind, script);
          ChartEditorDropdowns.NOTE_KINDS.set(script.noteKind, script.description);
        }
        catch (e)
        {
          trace(' FAILED to instantiate scripted note kind: ${scriptedClass}');
          trace(e);
        }
      }
    }
  }

  /**
   * Calls the given event for note kind scripts
   * @param event The event
   */
  public static function callEvent(event:ScriptEvent):Void
  {
    // if it is a note script event,
    // then only call the event for the specific note kind script
    if (Std.isOfType(event, NoteScriptEvent))
    {
      var noteEvent:NoteScriptEvent = cast(event, NoteScriptEvent);

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      var noteKind:NoteKind = noteKinds.get(noteEvent?.note?.kind);
=======
      var noteKind:NoteKind = noteKinds.get(noteEvent.note.kind);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      var noteKind:NoteKind = noteKinds.get(noteEvent.note.kind);
=======
      var noteKind:NoteKind = noteKinds.get(noteEvent?.note?.kind);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      var noteKind:NoteKind = noteKinds.get(noteEvent?.note?.kind);
=======
      var noteKind:NoteKind = noteKinds.get(noteEvent.note.kind);
>>>>>>> 8a1f54ca (lol8)

      if (noteKind != null)
      {
        ScriptEventDispatcher.callEvent(noteKind, event);
      }
    }
    else // call the event for all note kind scripts
    {
      for (noteKind in noteKinds.iterator())
      {
        ScriptEventDispatcher.callEvent(noteKind, event);
      }
    }
  }

  /**
   * Retrieve the note style from the given note kind
   * @param noteKind note kind name
   * @param suffix Used for song note styles
   * @return NoteStyle
   */
  public static function getNoteStyle(noteKind:String, ?suffix:String):Null<NoteStyle>
  {
    var noteStyleId:Null<String> = getNoteStyleId(noteKind, suffix);

    if (noteStyleId == null)
    {
      return null;
    }

    return NoteStyleRegistry.instance.fetchEntry(noteStyleId);
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public static function listNoteStyles(songNoteDatas:Array<SongNoteData>):Array<NoteStyle>
  {
    var results:Array<NoteStyle> = [];
    for (songNoteData in songNoteDatas)
    {
      var noteStyle:NoteStyle = getNoteStyle(songNoteData.kind, null);
    }
    return results;
  }

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  public static function listNoteStyles(songNoteDatas:Array<SongNoteData>):Array<NoteStyle>
  {
    var results:Array<NoteStyle> = [];
    for (songNoteData in songNoteDatas)
    {
      var noteStyle:NoteStyle = getNoteStyle(songNoteData.kind, null);
    }
    return results;
  }

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public static function listNoteStyles(songNoteDatas:Array<SongNoteData>):Array<NoteStyle>
  {
    var results:Array<NoteStyle> = [];
    for (songNoteData in songNoteDatas)
    {
      var noteStyle:NoteStyle = getNoteStyle(songNoteData.kind, null);
    }
    return results;
  }

=======
>>>>>>> 8a1f54ca (lol8)
  /**
   * Retrieve the note style id from the given note kind
   * @param noteKind Note kind name
   * @param suffix Used for song note styles
   * @return Null<String>
   */
  public static function getNoteStyleId(noteKind:String, ?suffix:String):Null<String>
  {
    if (suffix == '')
    {
      suffix = null;
    }

    var noteStyleId:Null<String> = noteKinds.get(noteKind)?.noteStyleId;
    if (noteStyleId != null && suffix != null)
    {
      noteStyleId = NoteStyleRegistry.instance.hasEntry('$noteStyleId-$suffix') ? '$noteStyleId-$suffix' : noteStyleId;
    }

    return noteStyleId;
  }

  /**
   * Retrive custom params of the given note kind
   * @param noteKind Name of the note kind
   * @return Array<NoteKindParam>
   */
  public static function getParams(noteKind:Null<String>):Array<NoteKindParam>
  {
    if (noteKind == null)
    {
      return [];
    }

    return noteKinds.get(noteKind)?.params ?? [];
  }
}
