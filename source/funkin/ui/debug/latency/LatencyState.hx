package funkin.ui.debug.latency;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import funkin.Conductor;
import funkin.ui.debug.DebugState;

class LatencyState extends DebugState
{
    var localConductor:Conductor;
    var offsetText:FlxText;
    var songVisFollowVideo:FlxSprite;
    var inputOffset:Int = 0; // local replacement, since Conductor.inputOffset no longer exists

    override public function create()
    {
        super.create();

        localConductor = Conductor.instance;

        songVisFollowVideo = new FlxSprite(0, 100).makeGraphic(200, 20, FlxColor.RED);
        add(songVisFollowVideo);

        offsetText = new FlxText(10, 10, 0, "", 16);
        add(offsetText);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        // Use our local inputOffset variable instead of Conductor.inputOffset
        songVisFollowVideo.x = songPosToX(localConductor.songPosition - inputOffset);
        offsetText.text = "INPUT Offset (Left/Right to change): " + inputOffset + "ms";

        if (FlxG.keys.justPressed.LEFT)
            inputOffset -= 1;
        if (FlxG.keys.justPressed.RIGHT)
            inputOffset += 1;

        // audioVisualOffset can only be read safely in 0.7.4, not written.
        // If you want to allow tweaking it, track a local copy instead.
    }

    function songPosToX(ms:Float):Float
    {
        return (ms / 1000) * 100; // very rough mapping
    }
}
