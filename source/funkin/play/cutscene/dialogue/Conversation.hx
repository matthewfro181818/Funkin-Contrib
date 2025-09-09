package funkin.play.cutscene.dialogue;

<<<<<<< HEAD
=======
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
>>>>>>> e11c5f8d (Add files via upload)
import flixel.group.FlxSpriteGroup;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import funkin.audio.FunkinSound;
<<<<<<< HEAD
import funkin.data.dialogue.ConversationData;
import funkin.data.dialogue.ConversationData.DialogueEntryData;
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
=======
import funkin.data.dialogue.conversation.ConversationData;
import funkin.data.dialogue.conversation.ConversationData.DialogueEntryData;
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxData;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerData;
import funkin.data.dialogue.speaker.SpeakerRegistry;
>>>>>>> e11c5f8d (Add files via upload)
import funkin.data.IRegistryEntry;
import funkin.graphics.FunkinSprite;
import funkin.modding.events.ScriptEvent;
import funkin.modding.events.ScriptEventDispatcher;
import funkin.modding.IScriptedClass.IDialogueScriptedClass;
import funkin.modding.IScriptedClass.IEventHandler;
<<<<<<< HEAD
=======
import funkin.play.cutscene.dialogue.DialogueBox;
>>>>>>> e11c5f8d (Add files via upload)
import funkin.util.SortUtil;
import funkin.util.EaseUtil;

/**
 * A high-level handler for dialogue.
 *
 * This shit is great for modders but it's pretty elaborate for how much it'll actually be used, lolol. -Eric
 */
<<<<<<< HEAD
@:nullSafety
class Conversation extends FlxSpriteGroup implements IDialogueScriptedClass implements IRegistryEntry<ConversationData>
{
  /**
=======
class Conversation extends FlxSpriteGroup implements IDialogueScriptedClass implements IRegistryEntry<ConversationData>
{
  /**
   * The ID of the conversation.
   */
  public final id:String;

  /**
>>>>>>> e11c5f8d (Add files via upload)
   * The current state of the conversation.
   */
  var state:ConversationState = ConversationState.Start;

  /**
<<<<<<< HEAD
=======
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
>>>>>>> e11c5f8d (Add files via upload)
   * The current entry in the dialogue.
   */
  var currentDialogueEntry:Int = 0;

  var currentDialogueEntryCount(get, never):Int;

  function get_currentDialogueEntryCount():Int
  {
<<<<<<< HEAD
    return _data?.dialogue?.length ?? 0;
=======
    return _data.dialogue.length;
>>>>>>> e11c5f8d (Add files via upload)
  }

  /**
   * The current line in the current entry in the dialogue.
  * **/
  var currentDialogueLine:Int = 0;

  var currentDialogueLineCount(get, never):Int;

  function get_currentDialogueLineCount():Int
  {
<<<<<<< HEAD
    return currentDialogueEntryData?.text?.length ?? 0;
  }

  var currentDialogueEntryData(get, never):Null<DialogueEntryData>;

  function get_currentDialogueEntryData():Null<DialogueEntryData>
=======
    return currentDialogueEntryData.text.length;
  }

  var currentDialogueEntryData(get, never):DialogueEntryData;

  function get_currentDialogueEntryData():DialogueEntryData
>>>>>>> e11c5f8d (Add files via upload)
  {
    if (_data == null || _data.dialogue == null) return null;
    if (currentDialogueEntry < 0 || currentDialogueEntry >= _data.dialogue.length) return null;

    return _data.dialogue[currentDialogueEntry];
  }

  var currentDialogueLineString(get, never):String;

  function get_currentDialogueLineString():String
  {
<<<<<<< HEAD
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
=======
    return currentDialogueEntryData?.text[currentDialogueLine];
>>>>>>> e11c5f8d (Add files via upload)
  }

  /**
   * AUDIO
   */
<<<<<<< HEAD
  var music:Null<FunkinSound>;
=======
  var music:FunkinSound;
>>>>>>> e11c5f8d (Add files via upload)

  /**
   * GRAPHICS
   */
<<<<<<< HEAD
  var backdrop:Null<FunkinSprite>;

  var currentSpeaker:Null<Speaker>;

  var currentDialogueBox:Null<DialogueBox>;

  public function new(id:String, ?params:Dynamic)
=======
  var backdrop:FunkinSprite;

  var currentSpeaker:Speaker;

  var currentDialogueBox:DialogueBox;

  public function new(id:String)
>>>>>>> e11c5f8d (Add files via upload)
  {
    super();

    this.id = id;
    this._data = _fetchData(id);

    if (_data == null)
    {
      throw 'Could not parse conversation data for id: $id';
    }
  }

  public function onCreate(event:ScriptEvent):Void
  {
    // Reset the progress in the dialogue.
    currentDialogueEntry = 0;
    currentDialogueLine = 0;
    this.state = ConversationState.Start;

    // Start the dialogue.
    dispatchEvent(new DialogueScriptEvent(DIALOGUE_START, this, false));
  }

  function setupMusic():Void
  {
<<<<<<< HEAD
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;

    music = FunkinSound.load(Paths.music(_data.music.asset), 0.0, true, true, true);
    var fadeTime:Float = _data.music.fadeTime ?? 0.0;

    if (fadeTime > 0.0)
    {
      FlxTween.tween(music, {volume: 1.0}, fadeTime, {ease: FlxEase.linear});
    }
    else
    {
      if (music != null)
      {
        music.volume = 1.0;
      }
=======
    if (_data.music == null) return;

    music = FunkinSound.load(Paths.music(_data.music.asset), 0.0, true, true, true);

    if (_data.music.fadeTime > 0.0)
    {
      FlxTween.tween(music, {volume: 1.0}, _data.music.fadeTime, {ease: FlxEase.linear});
    }
    else
    {
      music.volume = 1.0;
>>>>>>> e11c5f8d (Add files via upload)
    }
  }

  public function pauseMusic():Void
  {
    if (music != null)
    {
      music.pause();
    }
  }

  public function resumeMusic():Void
  {
    if (music != null)
    {
      music.resume();
    }
  }

  function setupBackdrop():Void
  {
<<<<<<< HEAD
    if (_data == null) return;

=======
>>>>>>> e11c5f8d (Add files via upload)
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }

    backdrop = new FunkinSprite(0, 0);

    if (_data.backdrop == null) return;

    // Play intro
    switch (_data.backdrop)
    {
      case SOLID(backdropData):
<<<<<<< HEAD
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
        backdrop.makeSolidColor(Std.int(FlxG.width), Std.int(FlxG.height), targetColor);
        var fadeTime = backdropData.fadeTime ?? 0.0;
        if (fadeTime > 0.0)
        {
          backdrop.alpha = 0.0;
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
=======
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
        backdrop.makeSolidColor(Std.int(FlxG.width), Std.int(FlxG.height), targetColor);
        if (backdropData.fadeTime > 0.0)
        {
          backdrop.alpha = 0.0;
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> e11c5f8d (Add files via upload)
        }
        else
        {
          backdrop.alpha = 1.0;
        }
      default:
        return;
    }

    backdrop.zIndex = 10;
    add(backdrop);
    refresh();
  }

  public override function update(elapsed:Float):Void
  {
    super.update(elapsed);

    dispatchEvent(new UpdateScriptEvent(elapsed));
  }

  function showCurrentSpeaker():Void
  {
<<<<<<< HEAD
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
=======
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
>>>>>>> e11c5f8d (Add files via upload)

    // Skip the next steps if the current speaker is already displayed.
    if ((currentSpeaker != null && currentSpeaker.alive) && nextSpeakerId == currentSpeaker.id) return;

    if (currentSpeaker != null)
    {
      remove(currentSpeaker);
      currentSpeaker.kill(); // Kill, don't destroy! We want to revive it later.
      currentSpeaker = null;
    }

<<<<<<< HEAD
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> e11c5f8d (Add files via upload)

    if (nextSpeaker == null)
    {
      if (nextSpeakerId == null)
      {
        trace('Dialogue entry has no speaker.');
      }
      else
      {
        trace('Speaker could not be retrieved.');
      }
      return;
    }
    if (!nextSpeaker.alive) nextSpeaker.revive();

    ScriptEventDispatcher.callEvent(nextSpeaker, new ScriptEvent(CREATE, true));

    currentSpeaker = nextSpeaker;
    currentSpeaker.zIndex = 200;
    add(currentSpeaker);
    refresh();
  }

  function playSpeakerAnimation():Void
  {
<<<<<<< HEAD
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;

    if (nextSpeakerAnimation == null) return;

    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;

    if (nextSpeakerAnimation == null) return;

    currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> e11c5f8d (Add files via upload)
  }

  public function refresh():Void
  {
    sort(SortUtil.byZIndex, FlxSort.ASCENDING);
  }

  function showCurrentDialogueBox():Void
  {
<<<<<<< HEAD
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
>>>>>>> e11c5f8d (Add files via upload)

    // Skip the next steps if the current dialogue box is already displayed.
    if ((currentDialogueBox != null && currentDialogueBox.alive) && nextDialogueBoxId == currentDialogueBox.id) return;

    if (currentDialogueBox != null)
    {
      remove(currentDialogueBox);
      currentDialogueBox.kill(); // Kill, don't destroy! We want to revive it later.
      currentDialogueBox = null;
    }

<<<<<<< HEAD
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> e11c5f8d (Add files via upload)

    if (nextDialogueBox == null)
    {
      trace('Dialogue box could not be retrieved.');
      return;
    }
    if (!nextDialogueBox.alive) nextDialogueBox.revive();

    ScriptEventDispatcher.callEvent(nextDialogueBox, new ScriptEvent(CREATE, true));

    currentDialogueBox = nextDialogueBox;
    currentDialogueBox.zIndex = 300;

    currentDialogueBox.typingCompleteCallback = this.onTypingComplete;

    add(currentDialogueBox);
    refresh();
  }

  function playDialogueBoxAnimation():Void
  {
<<<<<<< HEAD
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;

    if (nextDialogueBoxAnimation == null) return;

    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;

    if (nextDialogueBoxAnimation == null) return;

    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> e11c5f8d (Add files via upload)
  }

  function onTypingComplete():Void
  {
    if (this.state == ConversationState.Speaking)
    {
      this.state = ConversationState.Idle;
    }
    else
    {
      trace('[WARNING] Unexpected state transition from ${this.state}');
      this.state = ConversationState.Idle;
    }
  }

  public function startConversation():Void
  {
    dispatchEvent(new DialogueScriptEvent(DIALOGUE_START, this, true));
  }

  /**
   * Dispatch an event to attempt to advance the conversation.
   * This is done once at the start of the conversation, and once whenever the user presses CONFIRM to advance the conversation.
   *
   * The broadcast event may be cancelled by modules or ScriptedConversations. This will prevent the conversation from actually advancing.
   * This is useful if you want to manually play an animation or something.
   */
  public function advanceConversation():Void
  {
    switch (state)
    {
      case ConversationState.Start:
        dispatchEvent(new DialogueScriptEvent(DIALOGUE_START, this, true));
      case ConversationState.Opening:
        dispatchEvent(new DialogueScriptEvent(DIALOGUE_COMPLETE_LINE, this, true));
      case ConversationState.Speaking:
        dispatchEvent(new DialogueScriptEvent(DIALOGUE_COMPLETE_LINE, this, true));
      case ConversationState.Idle:
        dispatchEvent(new DialogueScriptEvent(DIALOGUE_LINE, this, true));
      case ConversationState.Ending:
        // Skip the outro.
        endOutro();
      default:
        // Do nothing.
    }
  }

  public function dispatchEvent(event:ScriptEvent):Void
  {
    var currentState:IEventHandler = cast FlxG.state;
    currentState.dispatchEvent(event);
  }

  /**
   * Reset the conversation back to the start.
   */
  public function resetConversation():Void
  {
    // Reset the progress in the dialogue.
    currentDialogueEntry = 0;
    this.state = ConversationState.Start;

    if (outroTween != null)
    {
      outroTween.cancel();
    }
    outroTween = null;

<<<<<<< HEAD
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }

    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }

    if (currentDialogueBox != null)
    {
      currentDialogueBox.kill();
      remove(currentDialogueBox);
      currentDialogueBox = null;
    }

    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (this.music != null) this.music.stop();
    this.music = null;

    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> e11c5f8d (Add files via upload)

    startConversation();
  }

  /**
   * Dispatch an event to attempt to immediately end the conversation.
   *
   * The broadcast event may be cancelled by modules or ScriptedConversations. This will prevent the conversation from being cancelled.
   * This is useful if you want to prevent an animation from being skipped or something.
   */
  public function skipConversation():Void
  {
    dispatchEvent(new DialogueScriptEvent(DIALOGUE_SKIP, this, true));
  }

<<<<<<< HEAD
  var outroTween:Null<FlxTween> = null;
=======
  var outroTween:FlxTween;
>>>>>>> e11c5f8d (Add files via upload)

  public function startOutro():Void
  {
    switch (_data?.outro)
    {
      case FADE(outroData):
        outroTween = FlxTween.tween(this, {alpha: 0.0}, outroData.fadeTime,
          {
            type: ONESHOT, // holy shit like the game no way
            startDelay: 0,
            onComplete: (_) -> endOutro(),
            ease: EaseUtil.stepped(8)
          });

<<<<<<< HEAD
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> e11c5f8d (Add files via upload)
      case NONE(_):
        // Immediately clean up.
        endOutro();
      default:
        // Immediately clean up.
        endOutro();
    }
  }

<<<<<<< HEAD
  public var completeCallback:Null<Void->Void> = null;
=======
  public var completeCallback:() -> Void;
>>>>>>> e11c5f8d (Add files via upload)

  public function endOutro():Void
  {
    ScriptEventDispatcher.callEvent(this, new ScriptEvent(DESTROY, false));
  }

  /**
   * Performed as the conversation starts.
   */
  public function onDialogueStart(event:DialogueScriptEvent):Void
  {
    propagateEvent(event);

    // Fade in the music and backdrop.
    setupMusic();
    setupBackdrop();

    // Advance the conversation.
    state = ConversationState.Opening;

    showCurrentDialogueBox();
    playDialogueBoxAnimation();
  }

  /**
   * Display the next line of conversation.
   */
  public function onDialogueLine(event:DialogueScriptEvent):Void
  {
    propagateEvent(event);
    if (event.eventCanceled) return;

    // Perform the actual logic to advance the conversation.
    currentDialogueLine += 1;
    if (currentDialogueLine >= currentDialogueLineCount)
    {
      // Open the next entry.
      currentDialogueLine = 0;
      currentDialogueEntry += 1;

      if (currentDialogueEntry >= currentDialogueEntryCount)
      {
        dispatchEvent(new DialogueScriptEvent(DIALOGUE_END, this, false));
      }
      else
      {
        if (state == Idle)
        {
          showCurrentDialogueBox();
          playDialogueBoxAnimation();

          state = Opening;
        }
      }
    }
    else
    {
      // Continue the dialog with more lines.
      state = Speaking;
<<<<<<< HEAD
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
=======
      currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> e11c5f8d (Add files via upload)
    }
  }

  /**
   * Skip the scrolling of the next line of conversation.
   */
  public function onDialogueCompleteLine(event:DialogueScriptEvent):Void
  {
    propagateEvent(event);
    if (event.eventCanceled) return;

<<<<<<< HEAD
    if (currentDialogueBox != null) currentDialogueBox.skip();
=======
    currentDialogueBox.skip();
>>>>>>> e11c5f8d (Add files via upload)
  }

  /**
   * Skip to the end of the conversation, immediately triggering the DIALOGUE_END event.
   */
  public function onDialogueSkip(event:DialogueScriptEvent):Void
  {
    propagateEvent(event);
    if (event.eventCanceled) return;

    dispatchEvent(new DialogueScriptEvent(DIALOGUE_END, this, false));
  }

  public function onDialogueEnd(event:DialogueScriptEvent):Void
  {
    propagateEvent(event);

    state = Ending;
  }

  // Only used for events/scripts.

  public function onUpdate(event:UpdateScriptEvent):Void
  {
    propagateEvent(event);

    if (event.eventCanceled) return;

    switch (state)
    {
      case ConversationState.Start:
        // Wait for advance() to be called and DIALOGUE_LINE to be dispatched.
        return;
      case ConversationState.Opening:
        // Backdrop animation should have started.
        // Box animations should have started.
        if (currentDialogueBox != null
          && (currentDialogueBox.isAnimationFinished()
            || currentDialogueBox.getCurrentAnimation() != currentDialogueEntryData?.boxAnimation))
        {
          // Box animations have finished.

          // Start playing the speaker animation.
          state = ConversationState.Speaking;
          showCurrentSpeaker();
          playSpeakerAnimation();
          currentDialogueBox.setText(currentDialogueLineString);
        }
        return;
      case ConversationState.Speaking:
        // Speaker animation should be playing.
        return;
      case ConversationState.Idle:
        // Waiting for user input via `advanceConversation()`.
        return;
      case ConversationState.Ending:
        if (outroTween == null) startOutro();
        return;
    }
  }

  public function onDestroy(event:ScriptEvent):Void
  {
    propagateEvent(event);

    if (outroTween != null)
    {
      outroTween.cancel();
    }
    outroTween = null;

    if (this.music != null) this.music.stop();
    this.music = null;

<<<<<<< HEAD
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }

    if (currentDialogueBox != null)
    {
      currentDialogueBox.kill();
      remove(currentDialogueBox);
      currentDialogueBox = null;
    }

    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> e11c5f8d (Add files via upload)

    this.clear();

    if (completeCallback != null) completeCallback();
  }

  public function onScriptEvent(event:ScriptEvent):Void
  {
    propagateEvent(event);
  }

  /**
   * As this event is dispatched to the Conversation, it is also dispatched to the active speaker.
   * @param event
   */
  function propagateEvent(event:ScriptEvent):Void
  {
    if (this.currentDialogueBox != null && this.currentDialogueBox.exists)
    {
      ScriptEventDispatcher.callEvent(this.currentDialogueBox, event);
    }
    if (this.currentSpeaker != null && this.currentSpeaker.exists)
    {
      ScriptEventDispatcher.callEvent(this.currentSpeaker, event);
    }
  }

  /**
   * Calls `kill()` on the group's members and then on the group itself.
   * You can revive this group later via `revive()` after this.
   */
  public override function revive():Void
  {
    super.revive();
    this.alpha = 1;
    this.visible = true;
  }

  /**
   * Calls `kill()` on the group's members and then on the group itself.
   * You can revive this group later via `revive()` after this.
   */
  public override function kill():Void
  {
    _skipTransformChildren = true;
    alive = false;
    exists = false;
    _skipTransformChildren = false;
    if (group != null) group.kill();

    if (outroTween != null)
    {
      outroTween.cancel();
      outroTween = null;
    }
  }
<<<<<<< HEAD
=======

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
>>>>>>> e11c5f8d (Add files via upload)
}

// Managing things with a single enum is a lot easier than a multitude of flags.
enum ConversationState
{
  /**
   * State hasn't been initialized yet.
   */
  Start;

  /**
   * A dialog is animating. If the dialog is static, this may only last for one frame.
   */
  Opening;

  /**
   * Text is scrolling and audio is playing. Speaker portrait is probably animating too.
   */
  Speaking;

  /**
   * Text is done scrolling and game is waiting for user to open another dialog.
   */
  Idle;

  /**
   * Fade out and leave conversation.
   */
  Ending;
}
