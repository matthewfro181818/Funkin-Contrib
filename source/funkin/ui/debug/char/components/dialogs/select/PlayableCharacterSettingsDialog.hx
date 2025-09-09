package funkin.ui.debug.char.components.dialogs.select;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.ui.debug.char.components.common.TextField;
import funkin.ui.debug.char.components.common.BoolField;

class PlayableCharacterSettingsDialog extends DefaultPageDialog {
    public var playerDataName:TextField = new TextField("Player");
    public var playerDataShowUnowned:BoolField = new BoolField(true);
    public var playerDataUnlocked:BoolField = new BoolField(true);
    public function new() { super(); }
}
