package funkin.data.dialogue;

import funkin.data.dialogue.SpeakerData;
import funkin.data.BaseRegistry;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;
// In 0.7.4, Speaker is the actual class, not funkin.ui.dialogue.Speaker
import funkin.play.cutscene.dialogue.Speaker;
import funkin.play.cutscene.dialogue.ScriptedSpeaker;

@:nullSafety
class SpeakerRegistry extends BaseRegistry<Speaker, SpeakerData>
  implements ISingleton
  implements DefaultRegistryImpl
{
  public static final SPEAKER_DATA_VERSION:thx.semver.Version = '1.0.0';
  public static final SPEAKER_DATA_VERSION_RULE:thx.semver.VersionRule = '1.0.x';

  public static final instance:SpeakerRegistry = new SpeakerRegistry();

  public function new()
  {
    super('SPEAKER', 'speakers', SPEAKER_DATA_VERSION_RULE);
  }

  public function fetchDefault():Speaker
  {
    var speaker:Null<Speaker> = fetchEntry(Constants.DEFAULT_SPEAKER);
    if (speaker == null) throw 'Default speaker was null! This should not happen!';
    return speaker;
  }

  public function parseEntryData(id:String):Null<SpeakerData>
  {
    var parser:json2object.JsonParser<SpeakerData> = new json2object.JsonParser<SpeakerData>();
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

  public function parseEntryDataRaw(contents:String, ?fileName:String):Null<SpeakerData>
  {
    var parser:json2object.JsonParser<SpeakerData> = new json2object.JsonParser<SpeakerData>();
    parser.ignoreUnknownVariables = false;
    parser.fromJson(contents, fileName);

    if (parser.errors.length > 0)
    {
      printErrors(parser.errors, fileName);
      return null;
    }

    return parser.value;
  }

  function createScriptedEntry(clsName:String):Speaker
  {
    return ScriptedSpeaker.init(clsName, 'unknown');
  }

  function getScriptedClassNames():Array<String>
  {
    return ScriptedSpeaker.listScriptClasses();
  }
}
