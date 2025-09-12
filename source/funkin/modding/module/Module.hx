package funkin.modding.module;

import funkin.modding.IScriptedClass.IPlayStateScriptedClass;
import funkin.modding.IScriptedClass.IStateChangingScriptedClass;
import funkin.modding.events.ScriptEvent;

/**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
 * Parameters used to initialize a module.
 */
typedef ModuleParams =
{
  /**
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  ?state:Class<Dynamic>
}

/**
||||||| parent of b150c43d (lol4)
=======
 * Parameters used to initialize a module.
 */
typedef ModuleParams =
{
  /**
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  ?state:Class<Dynamic>
}

/**
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
 * Parameters used to initialize a module.
 */
typedef ModuleParams =
{
  /**
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  ?state:Class<Dynamic>
}

/**
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
 * Parameters used to initialize a module.
 */
typedef ModuleParams =
{
  /**
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  ?state:Class<Dynamic>
}

/**
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
 * Parameters used to initialize a module.
 */
typedef ModuleParams =
{
  /**
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  ?state:Class<Dynamic>
}

/**
=======
>>>>>>> cd960b0a (idk7)
 * A module is a scripted class which receives all events without requiring a specific context.
 * You may have the module active at all times, or only when another script enables it.
 */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
=======
 * A module is a scripted class which receives all events without requiring a specific context.
 * You may have the module active at all times, or only when another script enables it.
 */
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
class Module implements IPlayStateScriptedClass implements IStateChangingScriptedClass
{
  /**
   * Whether the module is currently active.
   */
  public var active(default, set):Bool = true;

  function set_active(value:Bool):Bool
  {
    return this.active = value;
  }

  public var moduleId(default, null):String = 'UNKNOWN';

  /**
   * Determines the order in which modules receive events.
   * You can modify this to change the order in which a given module receives events.
   *
   * Priority 1 is processed before Priority 1000, etc.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var priority(default, set):Int = 1000;
=======
  public var priority(default, set):Int;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var priority(default, set):Int;
=======
  public var priority(default, set):Int = 1000;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var priority(default, set):Int = 1000;
=======
  public var priority(default, set):Int;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var priority(default, set):Int;
=======
  public var priority(default, set):Int = 1000;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var priority(default, set):Int = 1000;
=======
  public var priority(default, set):Int;
>>>>>>> cd960b0a (idk7)

  function set_priority(value:Int):Int
  {
    this.priority = value;
    @:privateAccess
    ModuleHandler.reorderModuleCache();
    return value;
  }

  /**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  public var state:Null<Class<Dynamic>> = null;

  /**
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  public var state:Null<Class<Dynamic>> = null;

  /**
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  public var state:Null<Class<Dynamic>> = null;

  /**
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  public var state:Null<Class<Dynamic>> = null;

  /**
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
   * The state this module is associated with.
   * If set, this module will only receive events when the game is in this state.
   */
  public var state:Null<Class<Dynamic>> = null;

  /**
=======
>>>>>>> cd960b0a (idk7)
   * Called when the module is initialized.
   * It may not be safe to reference other modules here since they may not be loaded yet.
   *
   * NOTE: To make the module start inactive, call `this.active = false` in the constructor.
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public function new(moduleId:String, priority:Int = 1000, ?params:ModuleParams):Void
||||||| parent of 8a1f54ca (lol8)
  public function new(moduleId:String, priority:Int = 1000, ?params:ModuleParams):Void
=======
  public function new(moduleId:String, priority:Int = 1000):Void
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public function new(moduleId:String, priority:Int = 1000):Void
=======
  public function new(moduleId:String, priority:Int = 1000, ?params:ModuleParams):Void
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public function new(moduleId:String, priority:Int = 1000, ?params:ModuleParams):Void
=======
  public function new(moduleId:String, priority:Int = 1000):Void
>>>>>>> cd960b0a (idk7)
  {
    this.moduleId = moduleId;
    this.priority = priority;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

    if (params != null)
    {
      this.state = params.state ?? null;
    }
=======
  public function new(moduleId:String, priority:Int = 1000):Void
||||||| parent of b150c43d (lol4)
  public function new(moduleId:String, priority:Int = 1000):Void
=======
  public function new(moduleId:String, priority:Int = 1000, ?params:ModuleParams):Void
>>>>>>> b150c43d (lol4)
  {
    this.moduleId = moduleId;
    this.priority = priority;
<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

    if (params != null)
    {
      this.state = params.state ?? null;
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

    if (params != null)
    {
      this.state = params.state ?? null;
    }
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

    if (params != null)
    {
      this.state = params.state ?? null;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)

    if (params != null)
    {
      this.state = params.state ?? null;
    }
=======
>>>>>>> cd960b0a (idk7)
  }

  public function toString()
  {
    return 'Module(' + this.moduleId + ')';
  }

  // TODO: Half of these aren't actually being called!!!!!!!

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * Called when ANY script event is dispatched.
   */
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  /**
   * Called when ANY script event is dispatched.
   */
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  /**
   * Called when ANY script event is dispatched.
   */
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  /**
   * Called when ANY script event is dispatched.
   */
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  /**
   * Called when ANY script event is dispatched.
   */
=======
>>>>>>> cd960b0a (idk7)
  public function onScriptEvent(event:ScriptEvent) {}

  /**
   * Called when the module is first created.
   * This happens before the title screen appears!
   */
  public function onCreate(event:ScriptEvent) {}

  /**
   * Called when a module is destroyed.
   * This currently only happens when reloading modules with F5.
   */
  public function onDestroy(event:ScriptEvent) {}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * Called every frame.
   */
||||||| parent of 8a1f54ca (lol8)
  /**
   * Called every frame.
   */
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  /**
   * Called every frame.
   */
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  /**
   * Called every frame.
   */
=======
>>>>>>> cd960b0a (idk7)
  public function onUpdate(event:UpdateScriptEvent) {}

  public function onPause(event:PauseScriptEvent) {}

  public function onResume(event:ScriptEvent) {}

  public function onSongStart(event:ScriptEvent) {}

  public function onSongEnd(event:ScriptEvent) {}

  public function onGameOver(event:ScriptEvent) {}

  public function onNoteIncoming(event:NoteScriptEvent) {}

  public function onNoteHit(event:HitNoteScriptEvent) {}

  public function onNoteMiss(event:NoteScriptEvent) {}

  public function onNoteGhostMiss(event:GhostMissNoteScriptEvent) {}

  public function onStepHit(event:SongTimeScriptEvent) {}

  public function onBeatHit(event:SongTimeScriptEvent) {}

  public function onSongEvent(event:SongEventScriptEvent) {}

  public function onCountdownStart(event:CountdownScriptEvent) {}

  public function onCountdownStep(event:CountdownScriptEvent) {}

  public function onCountdownEnd(event:CountdownScriptEvent) {}

  public function onSongLoaded(event:SongLoadScriptEvent) {}

  public function onStateChangeBegin(event:StateChangeScriptEvent) {}

  public function onStateChangeEnd(event:StateChangeScriptEvent) {}

  public function onFocusGained(event:FocusScriptEvent) {}

  public function onFocusLost(event:FocusScriptEvent) {}

  public function onSubStateOpenBegin(event:SubStateScriptEvent) {}

  public function onSubStateOpenEnd(event:SubStateScriptEvent) {}

  public function onSubStateCloseBegin(event:SubStateScriptEvent) {}

  public function onSubStateCloseEnd(event:SubStateScriptEvent) {}

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  /**
   * Called when the song has been restarted.
   */
=======
||||||| parent of b150c43d (lol4)
=======
  /**
   * Called every frame.
   */
>>>>>>> b150c43d (lol4)
  public function onUpdate(event:UpdateScriptEvent) {}

  /**
   * Called when the game is paused.
   */
  public function onPause(event:PauseScriptEvent) {}

  /**
   * Called when the game is resumed.
   */
  public function onResume(event:ScriptEvent) {}

  /**
   * Called when the song begins.
   */
  public function onSongStart(event:ScriptEvent) {}

  /**
   * Called when the song ends.
   */
  public function onSongEnd(event:ScriptEvent) {}

  /**
   * Called when the player dies.
   */
  public function onGameOver(event:ScriptEvent) {}

  /**
   * Called when a note on the strumline has been rendered and is now onscreen.
   * This gets dispatched for both the player and opponent strumlines.
   */
  public function onNoteIncoming(event:NoteScriptEvent) {}

  /**
   * Called when a note has been hit.
   * This gets dispatched for both the player and opponent strumlines.
   */
  public function onNoteHit(event:HitNoteScriptEvent) {}

  /**
   * Called when a note has been missed.
   * This gets dispatched for both the player and opponent strumlines.
   */
  public function onNoteMiss(event:NoteScriptEvent) {}

  public function onNoteHoldDrop(event:HoldNoteScriptEvent) {}

  /**
   * Called when the player presses a key without any notes present.
   */
  public function onNoteGhostMiss(event:GhostMissNoteScriptEvent) {}

  /**
   * Called when a step is hit in the song.
   */
  public function onStepHit(event:SongTimeScriptEvent) {}

  /**
   * Called when a beat is hit in the song.
   */
  public function onBeatHit(event:SongTimeScriptEvent) {}

  /**
   * Called when a song event is triggered.
   */
  public function onSongEvent(event:SongEventScriptEvent) {}

  /**
   * Called when the countdown begins.
   */
  public function onCountdownStart(event:CountdownScriptEvent) {}

  /**
   * Called for every step in the countdown.
   */
  public function onCountdownStep(event:CountdownScriptEvent) {}

  /**
   * Called when the countdown ends, but BEFORE the song starts.
   */
  public function onCountdownEnd(event:CountdownScriptEvent) {}

  /**
   * Called when the song's chart has been parsed and loaded.
   */
  public function onSongLoaded(event:SongLoadScriptEvent) {}

  /**
   * Called when the game is about to switch to a new state.
   */
  public function onStateChangeBegin(event:StateChangeScriptEvent) {}

  /**
   * Called after the game has switched to a new state.
   */
  public function onStateChangeEnd(event:StateChangeScriptEvent) {}

  /**
   * Called when the game regains focus.
   * This does not get called if "Pause on Unfocus" is disabled.
   */
  public function onFocusGained(event:FocusScriptEvent) {}

  /**
   * Called when the game loses focus.
   * This does not get called if "Pause on Unfocus" is disabled.
   */
  public function onFocusLost(event:FocusScriptEvent) {}

  /**
   * Called when the game is about to open a substate.
   */
  public function onSubStateOpenBegin(event:SubStateScriptEvent) {}

  /**
   * Called when a substate has been opened.
   */
  public function onSubStateOpenEnd(event:SubStateScriptEvent) {}

  /**
   * Called when the game is about to close a substate.
   */
  public function onSubStateCloseBegin(event:SubStateScriptEvent) {}

  /**
   * Called when a substate has been closed.
   */
  public function onSubStateCloseEnd(event:SubStateScriptEvent) {}

<<<<<<< HEAD
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
  /**
   * Called when the song has been restarted.
   */
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  /**
   * Called when the song has been restarted.
   */
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
  /**
   * Called when the song has been restarted.
   */
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  /**
   * Called when the song has been restarted.
   */
=======
>>>>>>> cd960b0a (idk7)
  public function onSongRetry(event:SongRetryEvent) {}
}
