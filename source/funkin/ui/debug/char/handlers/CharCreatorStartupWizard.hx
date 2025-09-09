package funkin.ui.debug.char.handlers;

import funkin.data.character.CharacterData.CharacterRenderType;
import haxe.io.Bytes;

class CharCreatorStartupWizard {
  public static var wizardProcessRunning:Bool = false;

  public static var onComplete:WizardGenerateParams->Void = null;
  public static var onQuit:Void->Void = null;

  public static var params:WizardGenerateParams = {
    characterID: "",
    generateCharacter: false,
    generatePlayerData: false,
    renderType: CharacterRenderType.Sparrow,
    files: [],
    charSelectFile: null,
    freeplayFile: null,
    importedCharacter: null,
    importedPlayerData: null
  }

  public static function startWizard(state:CharCreatorState, onComplete:WizardGenerateParams->Void = null, onQuit:Void->Void = null) {
    if (wizardProcessRunning) return;
    CharCreatorStartupWizard.onComplete = onComplete;
    CharCreatorStartupWizard.onQuit = onQuit;
    wizardProcessRunning = true;
    if (onComplete != null) onComplete(params);
  }
}

typedef WizardGenerateParams = {
  var characterID:String;
  var generateCharacter:Bool;
  var generatePlayerData:Bool;
  var renderType:CharacterRenderType;
  var files:Array<WizardFile>;
  var charSelectFile:WizardFile;
  var freeplayFile:WizardFile;
  @:optional var importedCharacter:String;
  @:optional var importedPlayerData:String;
}

typedef WizardFile = {
  var name:String;
  var bytes:Bytes;
}

enum abstract WizardStep(Int) from Int to Int {
  public var STARTUP = 0;
  public var IMPORT_DATA = 1;
  public var SELECT_CHAR_TYPE = 2;
  public var UPLOAD_ASSETS = 3;
  public var UPLOAD_PLAYER_ASSETS = 4;
  public var CONFIRM = 5;
}
