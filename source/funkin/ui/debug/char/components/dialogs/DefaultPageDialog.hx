package funkin.ui.debug.char.components.dialogs;

import flixel.group.FlxSpriteGroup;

class DefaultPageDialog extends FlxSpriteGroup {
    public var hidden:Bool = true;
    public function new() {
        super();
        visible = !hidden;
    }
    public function showDialog():Void {
        hidden = false;
        visible = true;
    }
    public function hideDialog():Void {
        hidden = true;
        visible = false;
    }
    public function destroy():Void {
        super.destroy();
    }
}
