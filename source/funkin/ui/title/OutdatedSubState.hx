package funkin.ui.title;

import flixel.FlxG;
import flixel.FlxState;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import openfl.Lib;

class OutdatedSubState extends FlxSubState
{
    override public function create()
    {
        super.create();

        // Replace FunkinSprite with FlxSprite.makeGraphic
        var bg = new flixel.FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
        add(bg);

        var version = Lib.current.stage.application.meta.get("version"); // fallback
        var txt = new FlxText(0, 0, FlxG.width, "You are running an outdated version!\nGame version: " + version, 16);
        txt.setFormat(null, 16, FlxColor.WHITE, "center");
        txt.screenCenter();
        add(txt);
    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (FlxG.keys.justPressed.ENTER)
        {
            // v0.7.4 doesn’t have MainMenuState, switch to TitleState instead
            FlxG.switchState(() -> new funkin.ui.TitleState());
        }
    }
}
