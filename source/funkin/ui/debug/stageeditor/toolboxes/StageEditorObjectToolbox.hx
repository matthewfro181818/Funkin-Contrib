package funkin.ui.debug.stageeditor.toolboxes;

import flixel.group.FlxSpriteGroup;
import haxe.ui.components.Button;

class StageEditorObjectToolbox extends FlxSpriteGroup
{
    var objectAnimSave:Button;
    var objectAnimDelete:Button;

    public function new()
    {
        super();

        objectAnimSave = new Button();
        objectAnimSave.text = "Save Animation";
        objectAnimSave.onClick = function(_) {
            trace("Object animation saved.");
        };
        // Add to UI if you have a layout system

        objectAnimDelete = new Button();
        objectAnimDelete.text = "Delete Animation";
        objectAnimDelete.onClick = function(_) {
            trace("Object animation deleted.");
        };
        // Add to UI if you have a layout system
    }
}
