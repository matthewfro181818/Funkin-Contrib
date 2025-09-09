package funkin.ui.debug.char.components.dialogs.freeplay;

import funkin.ui.debug.char.components.dialogs.DefaultPageDialog;
import funkin.ui.debug.char.components.common.NumberField;

class FreeplayDJSettingsDialog extends DefaultPageDialog {
    // Background scrolling texts
    public var bgText1:String = "FUNKIN";
    public var bgText2:String = "FREEPLAY";
    public var bgText3:String = "DJ";
    // Timings / frames (as NumberFields exposing .pos)
    public var introStartFrame:NumberField = new NumberField(0);
    public var introEndFrame:NumberField = new NumberField(0);
    public var loopStartFrame:NumberField = new NumberField(0);
    public var loopEndFrame:NumberField = new NumberField(0);
    public var introBadStartFrame:NumberField = new NumberField(0);
    public var introBadEndFrame:NumberField = new NumberField(0);
    public var loopBadStartFrame:NumberField = new NumberField(0);
    public var loopBadEndFrame:NumberField = new NumberField(0);

    public var charSelectTransitionDelay:NumberField = new NumberField(0);
    public var soundClickFrame:NumberField = new NumberField(0);
    public var soundCartoonFrame:NumberField = new NumberField(0);
    public var loopBlinkFrame:NumberField = new NumberField(0);
    public var loopFrame:NumberField = new NumberField(0);
    public var channelChangeFrame:NumberField = new NumberField(0);

    public function new() { super(); }
}
