package funkin.data.dialogue;

import funkin.data.BaseRegistry.IRegistryEntry;

/**
 * The data structure for a dialogue speaker.
 * Stored in JSON and loaded by the SpeakerRegistry.
 */
typedef SpeakerData =
{
  /**
   * The display name of the speaker.
   */
  var name:String;

  /**
   * The portrait or avatar asset ID for the speaker.
   */
  var portrait:String;

  /**
   * An optional voice or sound cue to use when the speaker is talking.
   */
  @:optional var voice:String;

  /**
   * Additional metadata for modders.
   */
  @:optional var metadata:Dynamic;
}

/**
 * A single entry in the SpeakerRegistry.
 */
@:build(funkin.util.macro.RegistryMacro.buildEntry())
class DialogueSpeaker implements IRegistryEntry<SpeakerData>
{
  public function new(id:String)
  {
    this.id = id;
    this._data = _fetchData(id);
  }

  public final id:String;
  public final _data:Null<SpeakerData>;

  public var data(get, never):SpeakerData;
  inline function get_data():SpeakerData
  {
    if (_data == null) throw 'DialogueSpeaker $id has no data!';
    return _data;
  }
}
