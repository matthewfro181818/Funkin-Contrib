package funkin.ui.debug.latency;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import funkin.Conductor;
import funkin.ui.debug.DebugMenuSubState;

/**
 * Rewritten for FNF 0.7.4 – fixes DebugState import and missing inputOffset/audioVisualOffset.
 */
class LatencyState extends MusicBeatState
{
  var localConductor:Conductor;
  var inputOffset:Int = 0;
  var audioVisualOffset:Int = 0;

  var offsetText:FlxText;
  var songVisFollowVideo:FlxSprite;

  override public function create()
  {
    super.create();

    localConductor = Conductor.instance;

    add(new FlxText(20, 20, 0, "Latency Calibration", 24));

    offsetText = new FlxText(20, 60, 0, "", 16);
    add(offsetText);

    songVisFollowVideo = new FlxSprite(0, FlxG.height * 0.5).makeGraphic(100, 20, FlxColor.RED);
    add(songVisFollowVideo);

    updateOffsetText();
  }

  override public function update(elapsed:Float)
  {
    super.update(elapsed);

    // Move visualizer
    songVisFollowVideo.x = songPosToX(localConductor.songPosition - inputOffset);

    // Keybinds for adjusting offsets
    var multiply:Int = FlxG.keys.pressed.SHIFT ? 10 : 1;

    if (FlxG.keys.justPressed.LEFT)
    {
      inputOffset -= 1 * multiply;
      updateOffsetText();
    }
    if (FlxG.keys.justPressed.RIGHT)
    {
      inputOffset += 1 * multiply;
      updateOffsetText();
    }

    if (FlxG.keys.justPressed.UP)
    {
      audioVisualOffset += 1 * multiply;
      updateOffsetText();
    }
    if (FlxG.keys.justPressed.DOWN)
    {
      audioVisualOffset -= 1 * multiply;
      updateOffsetText();
    }

    if (FlxG.keys.justPressed.ESCAPE)
    {
      FlxG.switchState(() -> new DebugMenuSubState());
    }
  }

  function updateOffsetText()
  {
    offsetText.text = "INPUT Offset (Left/Right): " + inputOffset + "ms\n" +
                      "AV Offset (Up/Down): " + audioVisualOffset + "ms";
  }

  function songPosToX(songPos:Float):Float
  {
    return (songPos % FlxG.width);
  }
}
