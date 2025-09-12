package funkin.play.event;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import funkin.play.song.Song;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.play.song.Song;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.play.song.Song;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.play.song.Song;
=======
>>>>>>> 905084b8 (idk2)
import polymod.hscript.HScriptedClass;

/**
 * A script that can be tied to a SongEvent.
 * Create a scripted class that extends SongEvent,
 * then call `super('SongEventType')` to use this.
 *
 * - Remember to override `handleEvent(data:SongEventData)` to perform your actions when the event is hit.
 * - Remember to override `getTitle()` to return an event name that will be displayed in the editor.
 * - Remember to override `getEventSchema()` to return a schema for the event data, used to build a form in the chart editor.
 */
@:hscriptClass
class ScriptedSongEvent extends SongEvent implements HScriptedClass {}
