package funkin.play.cutscene.dialogue;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import flixel.addons.display.FlxPieDial;
import flixel.FlxSprite;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import flixel.group.FlxSpriteGroup;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxSort;
import funkin.audio.FunkinSound;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)
import funkin.data.dialogue.conversation.ConversationData;
import funkin.data.dialogue.conversation.ConversationData.DialogueEntryData;
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxData;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerData;
import funkin.data.dialogue.speaker.SpeakerRegistry;
=======
import funkin.data.dialogue.ConversationData;
import funkin.data.dialogue.ConversationData.DialogueEntryData;
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
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
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.data.dialogue.conversation.ConversationData;
import funkin.data.dialogue.conversation.ConversationData.DialogueEntryData;
import funkin.data.dialogue.conversation.ConversationRegistry;
import funkin.data.dialogue.dialoguebox.DialogueBoxData;
import funkin.data.dialogue.dialoguebox.DialogueBoxRegistry;
import funkin.data.dialogue.speaker.SpeakerData;
import funkin.data.dialogue.speaker.SpeakerRegistry;
=======
import funkin.data.dialogue.ConversationData;
import funkin.data.dialogue.ConversationData.DialogueEntryData;
import funkin.data.dialogue.ConversationRegistry;
import funkin.data.dialogue.DialogueBoxRegistry;
import funkin.data.dialogue.SpeakerRegistry;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
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
>>>>>>> cd960b0a (idk7)
import funkin.data.IRegistryEntry;
import funkin.graphics.FunkinSprite;
import funkin.modding.events.ScriptEvent;
import funkin.modding.events.ScriptEventDispatcher;
import funkin.modding.IScriptedClass.IDialogueScriptedClass;
import funkin.modding.IScriptedClass.IEventHandler;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
import funkin.play.cutscene.dialogue.DialogueBox;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import funkin.play.cutscene.dialogue.DialogueBox;
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
import funkin.play.cutscene.dialogue.DialogueBox;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
import funkin.play.cutscene.dialogue.DialogueBox;
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
import funkin.play.cutscene.dialogue.DialogueBox;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
import funkin.play.cutscene.dialogue.DialogueBox;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
import funkin.util.SortUtil;
import funkin.util.EaseUtil;

/**
 * A high-level handler for dialogue.
 *
 * This shit is great for modders but it's pretty elaborate for how much it'll actually be used, lolol. -Eric
 */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
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
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
class Conversation extends FlxSpriteGroup implements IDialogueScriptedClass implements IRegistryEntry<ConversationData>
{
  /**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class Conversation extends FlxSpriteGroup implements IDialogueScriptedClass implements IRegistryEntry<ConversationData>
{
  /**
<<<<<<< HEAD
   * The ID of the conversation.
   */
  public final id:String;

  /**
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
   * The ID of the conversation.
   */
  public final id:String;

  /**
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
   * The ID of the conversation.
   */
  public final id:String;

  /**
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
   * The ID of the conversation.
   */
  public final id:String;

  /**
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
   * The ID of the conversation.
   */
  public final id:String;

  /**
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
   * The ID of the conversation.
   */
  public final id:String;

  /**
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
   * The current state of the conversation.
   */
  var state:ConversationState = ConversationState.Start;

  /**
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======
   * Conversation data as parsed from the JSON file.
   */
  public final _data:ConversationData;

  /**
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
   * The current entry in the dialogue.
   */
  var currentDialogueEntry:Int = 0;

  var currentDialogueEntryCount(get, never):Int;

  function get_currentDialogueEntryCount():Int
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    return _data?.dialogue?.length ?? 0;
=======
    return _data.dialogue.length;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    return _data.dialogue.length;
=======
    return _data?.dialogue?.length ?? 0;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    return _data?.dialogue?.length ?? 0;
=======
    return _data.dialogue.length;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    return _data.dialogue.length;
=======
    return _data?.dialogue?.length ?? 0;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    return _data?.dialogue?.length ?? 0;
=======
    return _data.dialogue.length;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    return _data?.dialogue?.length ?? 0;
=======
    return _data.dialogue.length;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  /**
   * The current line in the current entry in the dialogue.
  * **/
  var currentDialogueLine:Int = 0;

  var currentDialogueLineCount(get, never):Int;

  function get_currentDialogueLineCount():Int
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    return currentDialogueEntryData?.text?.length ?? 0;
||||||| parent of 8a1f54ca (lol8)
    return currentDialogueEntryData?.text?.length ?? 0;
=======
    return currentDialogueEntryData.text.length;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    return currentDialogueEntryData.text.length;
=======
    return currentDialogueEntryData?.text?.length ?? 0;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    return currentDialogueEntryData?.text?.length ?? 0;
=======
    return currentDialogueEntryData.text.length;
>>>>>>> cd960b0a (idk7)
  }

  var currentDialogueEntryData(get, never):DialogueEntryData;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  function get_currentDialogueEntryData():Null<DialogueEntryData>
=======
    return currentDialogueEntryData.text.length;
||||||| parent of b150c43d (lol4)
    return currentDialogueEntryData.text.length;
=======
    return currentDialogueEntryData?.text?.length ?? 0;
>>>>>>> b150c43d (lol4)
||||||| cf89d672
    return currentDialogueEntryData?.text?.length ?? 0;
=======
    return currentDialogueEntryData.text.length;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  var currentDialogueEntryData(get, never):DialogueEntryData;

<<<<<<< HEAD
<<<<<<< HEAD
  function get_currentDialogueEntryData():DialogueEntryData
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  function get_currentDialogueEntryData():DialogueEntryData
=======
  function get_currentDialogueEntryData():Null<DialogueEntryData>
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  function get_currentDialogueEntryData():Null<DialogueEntryData>
=======
  function get_currentDialogueEntryData():DialogueEntryData
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  function get_currentDialogueEntryData():DialogueEntryData
=======
  function get_currentDialogueEntryData():Null<DialogueEntryData>
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  function get_currentDialogueEntryData():Null<DialogueEntryData>
=======
  function get_currentDialogueEntryData():DialogueEntryData
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  function get_currentDialogueEntryData():Null<DialogueEntryData>
=======
  function get_currentDialogueEntryData():DialogueEntryData
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    if (_data == null || _data.dialogue == null) return null;
    if (currentDialogueEntry < 0 || currentDialogueEntry >= _data.dialogue.length) return null;

    return _data.dialogue[currentDialogueEntry];
  }

  var currentDialogueLineString(get, never):String;

  function get_currentDialogueLineString():String
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
=======
    return currentDialogueEntryData?.text[currentDialogueLine];
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    return currentDialogueEntryData?.text[currentDialogueLine];
=======
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
=======
    return currentDialogueEntryData?.text[currentDialogueLine];
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    return currentDialogueEntryData?.text[currentDialogueLine];
=======
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
=======
    return currentDialogueEntryData?.text[currentDialogueLine];
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    // TODO: Replace "" with some placeholder text?
    return currentDialogueEntryData?.text[currentDialogueLine] ?? "";
=======
    return currentDialogueEntryData?.text[currentDialogueLine];
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  /**
   * AUDIO
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var music:Null<FunkinSound>;
=======
  var music:FunkinSound;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  var music:FunkinSound;
=======
  var music:Null<FunkinSound>;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var music:Null<FunkinSound>;
=======
  var music:FunkinSound;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var music:FunkinSound;
=======
  var music:Null<FunkinSound>;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var music:Null<FunkinSound>;
=======
  var music:FunkinSound;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  var music:Null<FunkinSound>;
=======
  var music:FunkinSound;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

  /**
   * GRAPHICS
   */
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var backdrop:Null<FunkinSprite>;
||||||| parent of 8a1f54ca (lol8)
  var backdrop:Null<FunkinSprite>;
=======
  var backdrop:FunkinSprite;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var backdrop:FunkinSprite;
=======
  var backdrop:Null<FunkinSprite>;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var backdrop:Null<FunkinSprite>;
=======
  var backdrop:FunkinSprite;
>>>>>>> cd960b0a (idk7)

  var currentSpeaker:Speaker;

  var currentDialogueBox:DialogueBox;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public function new(id:String, ?params:Dynamic)
=======
  var backdrop:FunkinSprite;
||||||| parent of b150c43d (lol4)
  var backdrop:FunkinSprite;
=======
  var backdrop:Null<FunkinSprite>;
>>>>>>> b150c43d (lol4)
||||||| cf89d672
  var backdrop:Null<FunkinSprite>;
=======
  var backdrop:FunkinSprite;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

  var currentSpeaker:Speaker;

  var currentDialogueBox:DialogueBox;

<<<<<<< HEAD
  public function new(id:String)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public function new(id:String)
=======
  public function new(id:String, ?params:Dynamic)
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public function new(id:String, ?params:Dynamic)
=======
  public function new(id:String)
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public function new(id:String)
=======
  public function new(id:String, ?params:Dynamic)
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public function new(id:String, ?params:Dynamic)
=======
  public function new(id:String)
>>>>>>> cd960b0a (idk7)
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
||||||| parent of 8a1f54ca (lol8)
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
=======
    if (_data.music == null) return;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (_data.music == null) return;
=======
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
=======
    if (_data.music == null) return;
>>>>>>> cd960b0a (idk7)

    music = FunkinSound.load(Paths.music(_data.music.asset), 0.0, true, true, true);

    if (_data.music.fadeTime > 0.0)
    {
      FlxTween.tween(music, {volume: 1.0}, _data.music.fadeTime, {ease: FlxEase.linear});
    }
    else
    {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if (music != null)
      {
        music.volume = 1.0;
      }
=======
    if (_data.music == null) return;
||||||| parent of b150c43d (lol4)
    if (_data.music == null) return;
=======
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
>>>>>>> b150c43d (lol4)
||||||| cf89d672
    if (_data == null) return;

    if (_data.music == null || (_data.music.asset ?? "") == "") return;
=======
    if (_data.music == null) return;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    music = FunkinSound.load(Paths.music(_data.music.asset), 0.0, true, true, true);

    if (_data.music.fadeTime > 0.0)
    {
      FlxTween.tween(music, {volume: 1.0}, _data.music.fadeTime, {ease: FlxEase.linear});
    }
    else
    {
<<<<<<< HEAD
<<<<<<< HEAD
      music.volume = 1.0;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      music.volume = 1.0;
=======
      if (music != null)
      {
        music.volume = 1.0;
      }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      if (music != null)
      {
        music.volume = 1.0;
      }
=======
      music.volume = 1.0;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      music.volume = 1.0;
=======
      if (music != null)
      {
        music.volume = 1.0;
      }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      if (music != null)
      {
        music.volume = 1.0;
      }
=======
      music.volume = 1.0;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
      if (music != null)
      {
        music.volume = 1.0;
      }
=======
      music.volume = 1.0;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (_data == null) return;

=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    if (_data == null) return;

>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (_data == null) return;

=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
    if (_data == null) return;

>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (_data == null) return;

=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (_data == null) return;

=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
||||||| parent of 8a1f54ca (lol8)
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
=======
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
=======
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
=======
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
>>>>>>> cd960b0a (idk7)
        backdrop.makeSolidColor(Std.int(FlxG.width), Std.int(FlxG.height), targetColor);
        if (backdropData.fadeTime > 0.0)
        {
          backdrop.alpha = 0.0;
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
=======
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
||||||| parent of b150c43d (lol4)
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
=======
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
>>>>>>> b150c43d (lol4)
||||||| cf89d672
        var targetColor:Null<FlxColor> = FlxColor.fromString(backdropData.color);
=======
        var targetColor:FlxColor = FlxColor.fromString(backdropData.color);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
        backdrop.makeSolidColor(Std.int(FlxG.width), Std.int(FlxG.height), targetColor);
        if (backdropData.fadeTime > 0.0)
        {
          backdrop.alpha = 0.0;
<<<<<<< HEAD
<<<<<<< HEAD
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
=======
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
=======
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
=======
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
=======
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
          FlxTween.tween(backdrop, {alpha: 1.0}, fadeTime, {ease: EaseUtil.stepped(10)});
=======
          FlxTween.tween(backdrop, {alpha: 1.0}, backdropData.fadeTime, {ease: EaseUtil.stepped(10)});
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
=======
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
=======
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
=======
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
=======
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
=======
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextSpeakerId:String = currentDialogueEntryData?.speaker ?? "";
=======
    var nextSpeakerId:String = currentDialogueEntryData.speaker;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    // Skip the next steps if the current speaker is already displayed.
    if ((currentSpeaker != null && currentSpeaker.alive) && nextSpeakerId == currentSpeaker.id) return;

    if (currentSpeaker != null)
    {
      remove(currentSpeaker);
      currentSpeaker.kill(); // Kill, don't destroy! We want to revive it later.
      currentSpeaker = null;
    }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextSpeaker:Null<Speaker> = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
=======
    var nextSpeaker:Speaker = SpeakerRegistry.instance.fetchEntry(nextSpeakerId);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
||||||| parent of 8a1f54ca (lol8)
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
=======
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
=======
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
=======
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
=======
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    if (nextSpeakerAnimation == null) return;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
||||||| parent of b150c43d (lol4)
    var nextSpeakerAnimation:String = currentDialogueEntryData.speakerAnimation;
=======
    var nextSpeakerAnimation:Null<String> = currentDialogueEntryData?.speakerAnimation;
>>>>>>> b150c43d (lol4)

    if (nextSpeakerAnimation == null) return;

<<<<<<< HEAD
    currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (currentSpeaker != null) currentSpeaker.playAnimation(nextSpeakerAnimation);
=======
    currentSpeaker.playAnimation(nextSpeakerAnimation);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  public function refresh():Void
  {
    sort(SortUtil.byZIndex, FlxSort.ASCENDING);
  }

  function showCurrentDialogueBox():Void
  {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextDialogueBoxId:String = currentDialogueEntryData?.box ?? "";
=======
    var nextDialogueBoxId:String = currentDialogueEntryData?.box;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    // Skip the next steps if the current dialogue box is already displayed.
    if ((currentDialogueBox != null && currentDialogueBox.alive) && nextDialogueBoxId == currentDialogueBox.id) return;

    if (currentDialogueBox != null)
    {
      remove(currentDialogueBox);
      currentDialogueBox.kill(); // Kill, don't destroy! We want to revive it later.
      currentDialogueBox = null;
    }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextDialogueBox:Null<DialogueBox> = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
=======
    var nextDialogueBox:DialogueBox = DialogueBoxRegistry.instance.fetchEntry(nextDialogueBoxId);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
||||||| parent of 8a1f54ca (lol8)
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
=======
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
=======
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
=======
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
=======
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    if (nextDialogueBoxAnimation == null) return;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
||||||| parent of b150c43d (lol4)
    var nextDialogueBoxAnimation:String = currentDialogueEntryData?.boxAnimation;
=======
    var nextDialogueBoxAnimation:Null<String> = currentDialogueEntryData?.boxAnimation;
>>>>>>> b150c43d (lol4)

    if (nextDialogueBoxAnimation == null) return;

<<<<<<< HEAD
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (currentDialogueBox != null) currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
=======
    currentDialogueBox.playAnimation(nextDialogueBoxAnimation);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
||||||| parent of 8a1f54ca (lol8)
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
=======
    if (this.music != null) this.music.stop();
    this.music = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (this.music != null) this.music.stop();
    this.music = null;
=======
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
=======
    if (this.music != null) this.music.stop();
    this.music = null;
>>>>>>> cd960b0a (idk7)

    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (this.music != null) this.music.stop();
    this.music = null;
||||||| parent of b150c43d (lol4)
    if (this.music != null) this.music.stop();
    this.music = null;
=======
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
>>>>>>> b150c43d (lol4)
||||||| cf89d672
    if (this.music != null)
    {
      this.music.stop();
      this.music = null;
    }
=======
    if (this.music != null) this.music.stop();
    this.music = null;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

<<<<<<< HEAD
<<<<<<< HEAD
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
=======
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
=======
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  var outroTween:Null<FlxTween> = null;
=======
  var outroTween:FlxTween;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  var outroTween:FlxTween;
=======
  var outroTween:Null<FlxTween> = null;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  var outroTween:Null<FlxTween> = null;
=======
  var outroTween:FlxTween;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  var outroTween:FlxTween;
=======
  var outroTween:Null<FlxTween> = null;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  var outroTween:Null<FlxTween> = null;
=======
  var outroTween:FlxTween;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  var outroTween:Null<FlxTween> = null;
=======
  var outroTween:FlxTween;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
        if (this.music != null) FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
=======
        FlxTween.tween(this.music, {volume: 0.0}, outroData.fadeTime);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
      case NONE(_):
        // Immediately clean up.
        endOutro();
      default:
        // Immediately clean up.
        endOutro();
    }
  }

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  public var completeCallback:Null<Void->Void> = null;
=======
  public var completeCallback:() -> Void;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public var completeCallback:() -> Void;
=======
  public var completeCallback:Null<Void->Void> = null;
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
  public var completeCallback:Null<Void->Void> = null;
=======
  public var completeCallback:() -> Void;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  public var completeCallback:() -> Void;
=======
  public var completeCallback:Null<Void->Void> = null;
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
  public var completeCallback:Null<Void->Void> = null;
=======
  public var completeCallback:() -> Void;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
  public var completeCallback:Null<Void->Void> = null;
=======
  public var completeCallback:() -> Void;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
=======
      currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
      currentDialogueBox.appendText(currentDialogueLineString);
=======
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
=======
      currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
      currentDialogueBox.appendText(currentDialogueLineString);
=======
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
=======
      currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
      if (currentDialogueBox != null) currentDialogueBox.appendText(currentDialogueLineString);
=======
      currentDialogueBox.appendText(currentDialogueLineString);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (currentDialogueBox != null) currentDialogueBox.skip();
=======
    currentDialogueBox.skip();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    currentDialogueBox.skip();
=======
    if (currentDialogueBox != null) currentDialogueBox.skip();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (currentDialogueBox != null) currentDialogueBox.skip();
=======
    currentDialogueBox.skip();
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    currentDialogueBox.skip();
=======
    if (currentDialogueBox != null) currentDialogueBox.skip();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (currentDialogueBox != null) currentDialogueBox.skip();
=======
    currentDialogueBox.skip();
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (currentDialogueBox != null) currentDialogueBox.skip();
=======
    currentDialogueBox.skip();
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
||||||| parent of 8a1f54ca (lol8)
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
=======
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;
=======
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
=======
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;
>>>>>>> cd960b0a (idk7)

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;
=======
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
>>>>>>> b150c43d (lol4)
||||||| cf89d672
    if (currentSpeaker != null)
    {
      currentSpeaker.kill();
      remove(currentSpeaker);
      currentSpeaker = null;
    }
=======
    if (currentSpeaker != null) currentSpeaker.kill();
    remove(currentSpeaker);
    currentSpeaker = null;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    if (currentDialogueBox != null) currentDialogueBox.kill();
    remove(currentDialogueBox);
    currentDialogueBox = null;

<<<<<<< HEAD
<<<<<<< HEAD
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
=======
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
=======
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
    if (backdrop != null)
    {
      backdrop.destroy();
      remove(backdrop);
      backdrop = null;
    }
=======
    if (backdrop != null) backdrop.destroy();
    remove(backdrop);
    backdrop = null;
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
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
||||||| parent of b150c43d (lol4)

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
=======

  public override function toString():String
  {
    return 'Conversation($id)';
  }

  static function _fetchData(id:String):Null<ConversationData>
  {
    return ConversationRegistry.instance.parseEntryDataWithMigration(id, ConversationRegistry.instance.fetchEntryVersion(id));
  }
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
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
