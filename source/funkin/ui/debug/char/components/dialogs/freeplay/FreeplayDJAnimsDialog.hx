package funkin.ui.debug.char.components.dialogs.freeplay;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.ui.debug.char.components.common.TextField;
import funkin.ui.debug.char.components.common.NumberField;
import funkin.ui.debug.char.components.common.BoolField;
import funkin.ui.debug.char.components.common.Dropdown;

class FreeplayDJAnimsDialog extends DefaultPageDialog {
    public var djAnimList:Dropdown = new Dropdown();
    public var djAnimName:TextField = new TextField();
    public var djAnimPrefix:TextField = new TextField();
    public var djAnimLooped:BoolField = new BoolField(false);
    public var djAnimOffsetX:NumberField = new NumberField(0);
    public var djAnimOffsetY:NumberField = new NumberField(0);
    public function new() { super(); }
}
