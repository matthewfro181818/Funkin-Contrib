package funkin.play.notes.notekind;

import funkin.modding.IScriptedClass.INoteScriptedClass;
import funkin.modding.events.ScriptEvent;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.math.FlxMath;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.math.FlxMath;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.math.FlxMath;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.math.FlxMath;
=======
>>>>>>> 905084b8 (idk2)

/**
 * Class for note scripts
 */
class NoteKind implements INoteScriptedClass
{
  /**
   * The name of the note kind
   */
  public var noteKind:String;

  /**
   * Description used in chart editor
   */
  public var description:String;

  /**
   * Custom note style
   */
  public var noteStyleId:Null<String>;

  /**
   * Custom parameters for the chart editor
   */
  public var params:Array<NoteKindParam>;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * If this note kind is scoreable (ie, counted towards score and accuracy)
   * Only accessible in scripts
   * Defaults to true
   */
  public var scoreable:Bool = true;

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  /**
   * If this note kind is scoreable (ie, counted towards score and accuracy)
   * Only accessible in scripts
   * Defaults to true
   */
  public var scoreable:Bool = true;

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  /**
   * If this note kind is scoreable (ie, counted towards score and accuracy)
   * Only accessible in scripts
   * Defaults to true
   */
  public var scoreable:Bool = true;

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  /**
   * If this note kind is scoreable (ie, counted towards score and accuracy)
   * Only accessible in scripts
   * Defaults to true
   */
  public var scoreable:Bool = true;

>>>>>>> 905084b8 (idk2)
  public function new(noteKind:String, description:String = "", ?noteStyleId:String, ?params:Array<NoteKindParam>)
  {
    this.noteKind = noteKind;
    this.description = description;
    this.noteStyleId = noteStyleId;
    this.params = params ?? [];
  }

  public function toString():String
  {
    return noteKind;
  }

  /**
   * Retrieve all notes of this kind
   * @return Array<NoteSprite>
   */
  function getNotes():Array<NoteSprite>
  {
    var allNotes:Array<NoteSprite> = PlayState.instance.playerStrumline.notes.members.concat(PlayState.instance.opponentStrumline.notes.members);
    return allNotes.filter(function(note:NoteSprite) {
      return note != null && note.noteData.kind == this.noteKind;
    });
  }

  public function onScriptEvent(event:ScriptEvent):Void {}

  public function onCreate(event:ScriptEvent):Void {}

  public function onDestroy(event:ScriptEvent):Void {}

  public function onUpdate(event:UpdateScriptEvent):Void {}

  public function onNoteIncoming(event:NoteScriptEvent):Void {}

  public function onNoteHit(event:HitNoteScriptEvent):Void {}

  public function onNoteMiss(event:NoteScriptEvent):Void {}
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

  public function onNoteHoldDrop(event:HoldNoteScriptEvent) {}
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

  public function onNoteHoldDrop(event:HoldNoteScriptEvent) {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

  public function onNoteHoldDrop(event:HoldNoteScriptEvent) {}
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

  public function onNoteHoldDrop(event:HoldNoteScriptEvent) {}
>>>>>>> 905084b8 (idk2)
}

/**
 * Abstract for setting the type of the `NoteKindParam`
 * This was supposed to be an enum but polymod kept being annoying
 */
abstract NoteKindParamType(String) from String to String
{
  public static final STRING:String = 'String';

  public static final INT:String = 'Int';

  public static final FLOAT:String = 'Float';
}

typedef NoteKindParamData =
{
  /**
   * If `min` is null, there is no minimum
   */
  ?min:Null<Float>,

  /**
   * If `max` is null, there is no maximum
   */
  ?max:Null<Float>,

  /**
   * If `step` is null, it will use 1.0
   */
  ?step:Null<Float>,

  /**
   * If `precision` is null, there will be 0 decimal places
   */
  ?precision:Null<Int>,

  ?defaultValue:Dynamic
}

/**
 * Typedef for creating custom parameters in the chart editor
 */
typedef NoteKindParam =
{
  name:String,
  description:String,
  type:NoteKindParamType,
  ?data:NoteKindParamData
}
