package funkin.ui.debug.char.components.dialogs.gameplay;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.ui.debug.char.components.common.Dropdown;
import funkin.ui.debug.char.components.common.TextField;
import funkin.ui.debug.char.components.common.BoolField;
import funkin.ui.debug.char.components.common.NumberField;

class AddAnimDialog extends DefaultPageDialog {
    public var charAnimDropdown:Dropdown = new Dropdown();
    public var charAnimName:TextField = new TextField();
    public var charAnimPrefix:TextField = new TextField();
    public var charAnimLooped:BoolField = new BoolField(false);
    public var charAnimOffsetX:NumberField = new NumberField(0);
    public var charAnimOffsetY:NumberField = new NumberField(0);

    public function new() { super(); }
    public function updateDropdown():Void { /* no-op */ }
}
