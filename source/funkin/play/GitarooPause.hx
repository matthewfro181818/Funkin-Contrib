package funkin.play;

import flixel.FlxSprite;
<<<<<<< HEAD
<<<<<<< HEAD
import funkin.play.PlayState.PlayStateParams;
=======
import flixel.graphics.frames.FlxAtlasFrames;
import funkin.play.PlayState;
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
import flixel.graphics.frames.FlxAtlasFrames;
import funkin.play.PlayState;
=======
import funkin.play.PlayState.PlayStateParams;
>>>>>>> b150c43d (lol4)
import funkin.graphics.FunkinSprite;
import funkin.ui.MusicBeatState;
import flixel.addons.transition.FlxTransitionableState;
import funkin.ui.mainmenu.MainMenuState;
<<<<<<< HEAD
<<<<<<< HEAD
#if mobile
import funkin.util.TouchUtil;
import funkin.util.SwipeUtil;
#end
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
#if mobile
import funkin.util.TouchUtil;
import funkin.util.SwipeUtil;
#end
>>>>>>> b150c43d (lol4)

class GitarooPause extends MusicBeatState
{
  var replayButton:FlxSprite;
  var cancelButton:FlxSprite;

  var replaySelect:Bool = false;

<<<<<<< HEAD
<<<<<<< HEAD
  var previousParams:Null<PlayStateParams>;

  public function new(?previousParams:PlayStateParams):Void
=======
  var previousParams:PlayStateParams;
||||||| parent of b150c43d (lol4)
  var previousParams:PlayStateParams;
=======
  var previousParams:Null<PlayStateParams>;
>>>>>>> b150c43d (lol4)

<<<<<<< HEAD
  public function new(previousParams:PlayStateParams):Void
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  public function new(previousParams:PlayStateParams):Void
=======
  public function new(?previousParams:PlayStateParams):Void
>>>>>>> b150c43d (lol4)
  {
    super();

    this.previousParams = previousParams;
  }

  override function create():Void
  {
    if (FlxG.sound.music != null)
    {
      FlxG.sound.music.destroy();
      FlxG.sound.music = null;
    }

    var bg:FunkinSprite = FunkinSprite.create('pauseAlt/pauseBG');
<<<<<<< HEAD
<<<<<<< HEAD
    bg.setGraphicSize(Std.int(FlxG.width));
    bg.updateHitbox();
    bg.screenCenter();
=======
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
=======
    bg.setGraphicSize(Std.int(FlxG.width));
    bg.updateHitbox();
    bg.screenCenter();
>>>>>>> b150c43d (lol4)
    add(bg);

    var bf:FunkinSprite = FunkinSprite.createSparrow(0, 30, 'pauseAlt/bfLol');
    bf.animation.addByPrefix('lol', "funnyThing", 13);
    bf.animation.play('lol');
<<<<<<< HEAD
<<<<<<< HEAD
    bf.screenCenter(X);
    add(bf);

    replayButton = FunkinSprite.createSparrow(FlxG.width * 0.25, FlxG.height * 0.7, 'pauseAlt/pauseUI');
=======
    add(bf);
||||||| parent of b150c43d (lol4)
    add(bf);
=======
>>>>>>> b150c43d (lol4)
    bf.screenCenter(X);
    add(bf);

<<<<<<< HEAD
    replayButton = FunkinSprite.createSparrow(FlxG.width * 0.28, FlxG.height * 0.7, 'pauseAlt/pauseUI');
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    replayButton = FunkinSprite.createSparrow(FlxG.width * 0.28, FlxG.height * 0.7, 'pauseAlt/pauseUI');
=======
    replayButton = FunkinSprite.createSparrow(FlxG.width * 0.25, FlxG.height * 0.7, 'pauseAlt/pauseUI');
>>>>>>> b150c43d (lol4)
    replayButton.animation.addByPrefix('selected', 'bluereplay', 0, false);
    replayButton.animation.appendByPrefix('selected', 'yellowreplay');
    replayButton.animation.play('selected');
    add(replayButton);

    cancelButton = FunkinSprite.createSparrow(FlxG.width * 0.58, replayButton.y, 'pauseAlt/pauseUI');
    cancelButton.animation.addByPrefix('selected', 'bluecancel', 0, false);
    cancelButton.animation.appendByPrefix('selected', 'cancelyellow');
    cancelButton.animation.play('selected');
    add(cancelButton);

    changeThing();

    super.create();
  }

<<<<<<< HEAD
<<<<<<< HEAD
  #if mobile
  function checkSelectionPress():Bool
  {
    var buttonAcceptCheck:Bool = replaySelect ? TouchUtil.pressAction(replayButton) : TouchUtil.pressAction(cancelButton);
    return buttonAcceptCheck && !SwipeUtil.swipeAny;
  }
  #end

  override function update(elapsed:Float):Void
  {
    if (controls.UI_LEFT_P || controls.UI_RIGHT_P #if mobile || SwipeUtil.justSwipedLeft || SwipeUtil.justSwipedRight #end) changeThing();

    if (controls.ACCEPT #if mobile || checkSelectionPress() #end)
=======
||||||| parent of b150c43d (lol4)
=======
  #if mobile
  function checkSelectionPress():Bool
  {
    var buttonAcceptCheck:Bool = replaySelect ? TouchUtil.pressAction(replayButton) : TouchUtil.pressAction(cancelButton);
    return buttonAcceptCheck && !SwipeUtil.swipeAny;
  }
  #end

>>>>>>> b150c43d (lol4)
  override function update(elapsed:Float):Void
  {
    if (controls.UI_LEFT_P || controls.UI_RIGHT_P #if mobile || SwipeUtil.justSwipedLeft || SwipeUtil.justSwipedRight #end) changeThing();

<<<<<<< HEAD
    if (controls.ACCEPT)
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
    if (controls.ACCEPT)
=======
    if (controls.ACCEPT #if mobile || checkSelectionPress() #end)
>>>>>>> b150c43d (lol4)
    {
      if (replaySelect)
      {
        FlxTransitionableState.skipNextTransIn = false;
        FlxTransitionableState.skipNextTransOut = false;
        FlxG.switchState(() -> new PlayState(previousParams));
      }
      else
      {
        FlxG.switchState(() -> new MainMenuState());
      }
    }

    super.update(elapsed);
  }

  function changeThing():Void
  {
    replaySelect = !replaySelect;

    if (replaySelect)
    {
      cancelButton.animation.curAnim.curFrame = 0;
      replayButton.animation.curAnim.curFrame = 1;
    }
    else
    {
      cancelButton.animation.curAnim.curFrame = 1;
      replayButton.animation.curAnim.curFrame = 0;
    }
  }
}
