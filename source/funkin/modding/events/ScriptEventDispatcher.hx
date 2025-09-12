package funkin.modding.events;

import funkin.modding.IScriptedClass.IPlayStateScriptedClass;
import funkin.modding.IScriptedClass;

/**
 * Utility functions to assist with handling scripted classes.
 */
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
class ScriptEventDispatcher
{
  /**
   * Invoke the given event hook on the given scripted class.
   * @param target The target class to call script hooks on.
   * @param event The event, which determines the script hook to call and provides parameters for it.
   */
  public static function callEvent(target:Null<IScriptedClass>, event:ScriptEvent):Void
  {
    if (target == null || event == null) return;

    target.onScriptEvent(event);

    // If one target says to stop propagation, stop.
    if (!event.shouldPropagate)
    {
      return;
    }

    // IScriptedClass
    switch (event.type)
    {
      case CREATE:
        target.onCreate(event);
        return;
      case DESTROY:
        target.onDestroy(event);
        return;
      case UPDATE:
        target.onUpdate(cast event);
        return;
      default: // Continue;
    }

    if (Std.isOfType(target, IStateStageProp))
    {
      var t:IStateStageProp = cast(target, IStateStageProp);
      switch (event.type)
      {
        case ADDED:
          t.onAdd(cast event);
          return;
        default: // Continue;
      }
    }

    if (Std.isOfType(target, IDialogueScriptedClass))
    {
      var t:IDialogueScriptedClass = cast(target, IDialogueScriptedClass);
      switch (event.type)
      {
        case DIALOGUE_START:
          t.onDialogueStart(cast event);
          return;
        case DIALOGUE_LINE:
          t.onDialogueLine(cast event);
          return;
        case DIALOGUE_COMPLETE_LINE:
          t.onDialogueCompleteLine(cast event);
          return;
        case DIALOGUE_SKIP:
          t.onDialogueSkip(cast event);
          return;
        case DIALOGUE_END:
          t.onDialogueEnd(cast event);
          return;
        default: // Continue;
      }
    }

    if (Std.isOfType(target, INoteScriptedClass))
    {
      var t:INoteScriptedClass = cast(target, INoteScriptedClass);
      switch (event.type)
      {
        case NOTE_INCOMING:
          t.onNoteIncoming(cast event);
          return;
        case NOTE_HIT:
          t.onNoteHit(cast event);
          return;
        case NOTE_MISS:
          t.onNoteMiss(cast event);
          return;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        case NOTE_HOLD_DROP:
          t.onNoteHoldDrop(cast event);
          return;
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
        case NOTE_HOLD_DROP:
          t.onNoteHoldDrop(cast event);
          return;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        case NOTE_HOLD_DROP:
          t.onNoteHoldDrop(cast event);
          return;
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
        case NOTE_HOLD_DROP:
          t.onNoteHoldDrop(cast event);
          return;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        case NOTE_HOLD_DROP:
          t.onNoteHoldDrop(cast event);
          return;
=======
>>>>>>> cd960b0a (idk7)
        default: // Continue;
      }
    }

    if (Std.isOfType(target, IBPMSyncedScriptedClass))
    {
      var t:IBPMSyncedScriptedClass = cast(target, IBPMSyncedScriptedClass);
      switch (event.type)
      {
        case SONG_BEAT_HIT:
          t.onBeatHit(cast event);
          return;
        case SONG_STEP_HIT:
          t.onStepHit(cast event);
          return;
        default: // Continue;
      }
    }

    if (Std.isOfType(target, IPlayStateScriptedClass))
    {
      var t:IPlayStateScriptedClass = cast(target, IPlayStateScriptedClass);
      switch (event.type)
      {
        case NOTE_GHOST_MISS:
          t.onNoteGhostMiss(cast event);
          return;
        case SONG_START:
          t.onSongStart(event);
          return;
        case SONG_END:
          t.onSongEnd(event);
          return;
        case SONG_RETRY:
          t.onSongRetry(cast event);
          return;
        case GAME_OVER:
          t.onGameOver(event);
          return;
        case PAUSE:
          t.onPause(cast event);
          return;
        case RESUME:
          t.onResume(event);
          return;
        case SONG_EVENT:
          t.onSongEvent(cast event);
          return;
        case COUNTDOWN_START:
          t.onCountdownStart(cast event);
          return;
        case COUNTDOWN_STEP:
          t.onCountdownStep(cast event);
          return;
        case COUNTDOWN_END:
          t.onCountdownEnd(cast event);
          return;
        case SONG_LOADED:
          t.onSongLoaded(cast event);
          return;
        default: // Continue;
      }
    }

    if (Std.isOfType(target, IStateChangingScriptedClass))
    {
      var t = cast(target, IStateChangingScriptedClass);
      switch (event.type)
      {
        case STATE_CHANGE_BEGIN:
          t.onStateChangeBegin(cast event);
          return;
        case STATE_CHANGE_END:
          t.onStateChangeEnd(cast event);
          return;
        case SUBSTATE_OPEN_BEGIN:
          t.onSubStateOpenBegin(cast event);
          return;
        case SUBSTATE_OPEN_END:
          t.onSubStateOpenEnd(cast event);
          return;
        case SUBSTATE_CLOSE_BEGIN:
          t.onSubStateCloseBegin(cast event);
          return;
        case SUBSTATE_CLOSE_END:
          t.onSubStateCloseEnd(cast event);
          return;
        case FOCUS_LOST:
          t.onFocusLost(cast event);
          return;
        case FOCUS_GAINED:
          t.onFocusGained(cast event);
          return;
        default: // Continue;
      }
    }
    else
    {
      // Prevent "NO HELPER error."
      return;
    }

    // If you get a crash on this line, that means ERIC FUCKED UP!
    // throw 'No function called for event type: ${event.type}';
  }

  public static function callEventOnAllTargets(targets:Iterator<IScriptedClass>, event:ScriptEvent):Void
  {
    if (targets == null || event == null) return;

    if (Std.isOfType(targets, Array))
    {
      var t = cast(targets, Array<Dynamic>);
      if (t.length == 0) return;
    }

    for (target in targets)
    {
      var t:IScriptedClass = cast target;
      if (t == null) continue;

      callEvent(t, event);

      // If one target says to stop propagation, stop.
      if (!event.shouldPropagate)
      {
        return;
      }
    }
  }
}
