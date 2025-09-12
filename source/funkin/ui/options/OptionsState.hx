<<<<<<< HEAD
package funkin.ui.options;

import funkin.ui.transition.LoadingState;
import funkin.ui.debug.latency.LatencyState;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup;
import flixel.util.FlxSignal;
import funkin.audio.FunkinSound;
import funkin.ui.mainmenu.MainMenuState;
import funkin.ui.MusicBeatState;
import funkin.graphics.shaders.HSVShader;
import funkin.util.WindowUtil;
import funkin.audio.FunkinSound;
import funkin.input.Controls;

class OptionsState extends MusicBeatState
{
  var pages = new Map<PageName, Page>();
  var currentName:PageName = Options;
  var currentPage(get, never):Page;

  inline function get_currentPage():Page
    return pages[currentName];

  override function create():Void
  {
    persistentUpdate = true;

    var menuBG = new FlxSprite().loadGraphic(Paths.image('menuBG'));
    var hsv = new HSVShader();
    hsv.hue = -0.6;
    hsv.saturation = 0.9;
    hsv.value = 3.6;
    menuBG.shader = hsv;
    FlxG.debugger.track(hsv);
    menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
    menuBG.updateHitbox();
    menuBG.screenCenter();
    menuBG.scrollFactor.set(0, 0);
    add(menuBG);

    var options = addPage(Options, new OptionsMenu());
    var preferences = addPage(Preferences, new PreferencesMenu());
    var controls = addPage(Controls, new ControlsMenu());

    if (options.hasMultipleOptions())
    {
      options.onExit.add(exitToMainMenu);
      controls.onExit.add(exitControls);
      preferences.onExit.add(switchPage.bind(Options));
    }
    else
    {
      // No need to show Options page
      controls.onExit.add(exitToMainMenu);
      setPage(Controls);
    }

    super.create();
  }

  function addPage<T:Page>(name:PageName, page:T)
  {
    page.onSwitch.add(switchPage);
    pages[name] = page;
    add(page);
    page.exists = currentName == name;
    return page;
  }

  function setPage(name:PageName)
  {
    if (pages.exists(currentName))
    {
      currentPage.exists = false;
      currentPage.visible = false;
    }

    currentName = name;

    if (pages.exists(currentName))
    {
      currentPage.exists = true;
      currentPage.visible = true;
    }
  }

  function switchPage(name:PageName)
  {
    // TODO: Animate this transition?
    setPage(name);
  }

  function exitControls():Void
  {
    // Apply any changes to the controls.
    PlayerSettings.reset();
    PlayerSettings.init();

    switchPage(Options);
  }

  function exitToMainMenu()
  {
    currentPage.enabled = false;
    // TODO: Animate this transition?
    FlxG.switchState(() -> new MainMenuState());
  }
}

class Page extends FlxGroup
{
  public var onSwitch(default, null) = new FlxTypedSignal<PageName->Void>();
  public var onExit(default, null) = new FlxSignal();

  public var enabled(default, set) = true;
  public var canExit = true;

  var controls(get, never):Controls;

  inline function get_controls()
    return PlayerSettings.player1.controls;

  var subState:FlxSubState;

  inline function switchPage(name:PageName)
  {
    onSwitch.dispatch(name);
  }

  inline function exit()
  {
    onExit.dispatch();
  }

  override function update(elapsed:Float)
  {
    super.update(elapsed);

    if (enabled) updateEnabled(elapsed);
  }

  function updateEnabled(elapsed:Float)
  {
    if (canExit && controls.BACK)
    {
      exit();
      FunkinSound.playOnce(Paths.sound('cancelMenu'));
    }
  }

  function set_enabled(value:Bool)
  {
    return this.enabled = value;
  }

  function openPrompt(prompt:Prompt, onClose:Void->Void)
  {
    enabled = false;
    prompt.closeCallback = function() {
      enabled = true;
      if (onClose != null) onClose();
    }

    FlxG.state.openSubState(prompt);
  }

  override function destroy()
  {
    super.destroy();
    onSwitch.removeAll();
  }
}

class OptionsMenu extends Page
{
  var items:TextMenuList;

  public function new()
  {
    super();

    add(items = new TextMenuList());
    createItem("PREFERENCES", function() switchPage(Preferences));
    createItem("CONTROLS", function() switchPage(Controls));
    createItem("INPUT OFFSETS", function() {
      #if web
      LoadingState.transitionToState(() -> new LatencyState());
      #else
      FlxG.state.openSubState(new LatencyState());
      #end
    });

    #if newgrounds
    if (NGio.isLoggedIn) createItem("LOGOUT", selectLogout);
    else
      createItem("LOGIN", selectLogin);
    #end
    createItem("EXIT", exit);
  }

  function createItem(name:String, callback:Void->Void, fireInstantly = false)
  {
    var item = items.createItem(0, 100 + items.length * 100, name, BOLD, callback);
    item.fireInstantly = fireInstantly;
    item.screenCenter(X);
    return item;
  }

  override function set_enabled(value:Bool)
  {
    items.enabled = value;
    return super.set_enabled(value);
  }

  /**
   * True if this page has multiple options, excluding the exit option.
   * If false, there's no reason to ever show this page.
   */
  public function hasMultipleOptions():Bool
  {
    return items.length > 2;
  }

  #if newgrounds
  function selectLogin()
  {
    openNgPrompt(NgPrompt.showLogin());
  }

  function selectLogout()
  {
    openNgPrompt(NgPrompt.showLogout());
  }

  /**
   * Calls openPrompt and redraws the login/logout button
   * @param prompt
   * @param onClose
   */
  public function openNgPrompt(prompt:Prompt, ?onClose:Void->Void)
  {
    var onPromptClose = checkLoginStatus;
    if (onClose != null)
    {
      onPromptClose = function() {
        checkLoginStatus();
        onClose();
      }
    }

    openPrompt(prompt, onPromptClose);
  }

  function checkLoginStatus()
  {
    // this shit don't work!! wtf!!!!
    var prevLoggedIn = items.has("logout");
    if (prevLoggedIn && !NGio.isLoggedIn) items.resetItem("logout", "login", selectLogin);
    else if (!prevLoggedIn && NGio.isLoggedIn) items.resetItem("login", "logout", selectLogout);
  }
  #end
}

enum abstract PageName(String)
{
  var Options = "options";
  var Controls = "controls";
  var Colors = "colors";
  var Mods = "mods";
  var Preferences = "preferences";
}
||||||| parent of 13e3b504 (Add files via upload)
=======
package funkin.ui.options;

import funkin.ui.transition.LoadingState;
import funkin.ui.debug.latency.LatencyState;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.addons.transition.FlxTransitionableState;
import flixel.group.FlxGroup;
import flixel.util.FlxSignal;
import funkin.audio.FunkinSound;
import funkin.ui.mainmenu.MainMenuState;
import funkin.ui.MusicBeatState;
import funkin.graphics.shaders.HSVShader;
import funkin.util.WindowUtil;
import funkin.audio.FunkinSound;
import funkin.input.Controls;

class OptionsState extends MusicBeatState
{
  var pages = new Map<PageName, Page>();
  var currentName:PageName = Options;
  var currentPage(get, never):Page;

  inline function get_currentPage():Page
    return pages[currentName];

  override function create():Void
  {
    persistentUpdate = true;

    var menuBG = new FlxSprite().loadGraphic(Paths.image('menuBG'));
    var hsv = new HSVShader();
    hsv.hue = -0.6;
    hsv.saturation = 0.9;
    hsv.value = 3.6;
    menuBG.shader = hsv;
    FlxG.debugger.track(hsv);
    menuBG.setGraphicSize(Std.int(menuBG.width * 1.1));
    menuBG.updateHitbox();
    menuBG.screenCenter();
    menuBG.scrollFactor.set(0, 0);
    add(menuBG);

<<<<<<< HEAD
    optionsCodex = new Codex<OptionsMenuPageName>(Options);
    add(optionsCodex);

    var saveData:SaveDataMenu = optionsCodex.addPage(SaveData, new SaveDataMenu());
    var options:OptionsMenu = optionsCodex.addPage(Options, new OptionsMenu(saveData));
    var preferences:PreferencesMenu = optionsCodex.addPage(Preferences, new PreferencesMenu());
    var controls:ControlsMenu = optionsCodex.addPage(Controls, new ControlsMenu());
    #if FEATURE_LAG_ADJUSTMENT
    var offsets:OffsetMenu = optionsCodex.addPage(Offsets, new OffsetMenu());
    #end
||||||| cf89d672
    optionsCodex = new Codex<OptionsMenuPageName>(Options);
    add(optionsCodex);

    var options:OptionsMenu = optionsCodex.addPage(Options, new OptionsMenu());
    var preferences:PreferencesMenu = optionsCodex.addPage(Preferences, new PreferencesMenu());
    var controls:ControlsMenu = optionsCodex.addPage(Controls, new ControlsMenu());
    #if FEATURE_INPUT_OFFSETS
    var offsets:OffsetMenu = optionsCodex.addPage(Offsets, new OffsetMenu());
    #end
=======
    var options = addPage(Options, new OptionsMenu());
    var preferences = addPage(Preferences, new PreferencesMenu());
    var controls = addPage(Controls, new ControlsMenu());
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

    if (options.hasMultipleOptions())
    {
      options.onExit.add(exitToMainMenu);
      controls.onExit.add(exitControls);
<<<<<<< HEAD
      preferences.onExit.add(optionsCodex.switchPage.bind(Options));
      #if FEATURE_LAG_ADJUSTMENT
      offsets.onExit.add(exitOffsets);
      #end
      saveData.onExit.add(optionsCodex.switchPage.bind(Options));
||||||| cf89d672
      preferences.onExit.add(optionsCodex.switchPage.bind(Options));
      #if FEATURE_INPUT_OFFSETS
      offsets.onExit.add(exitOffsets);
      #end
=======
      preferences.onExit.add(switchPage.bind(Options));
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    }
    else
    {
      // No need to show Options page
      controls.onExit.add(exitToMainMenu);
      setPage(Controls);
    }

    super.create();
  }

  function addPage<T:Page>(name:PageName, page:T)
  {
    page.onSwitch.add(switchPage);
    pages[name] = page;
    add(page);
    page.exists = currentName == name;
    return page;
  }

  function setPage(name:PageName)
  {
    if (pages.exists(currentName))
    {
      currentPage.exists = false;
      currentPage.visible = false;
    }

    currentName = name;

    if (pages.exists(currentName))
    {
      currentPage.exists = true;
      currentPage.visible = true;
    }
  }

  function switchPage(name:PageName)
  {
    // TODO: Animate this transition?
    setPage(name);
  }

  function exitControls():Void
  {
    // Apply any changes to the controls.
    PlayerSettings.reset();
    PlayerSettings.init();

    switchPage(Options);
  }

  function exitToMainMenu()
  {
    currentPage.enabled = false;
    // TODO: Animate this transition?
    FlxG.keys.enabled = false;
    FlxG.switchState(() -> new MainMenuState());
  }
}

class Page extends FlxGroup
{
  public var onSwitch(default, null) = new FlxTypedSignal<PageName->Void>();
  public var onExit(default, null) = new FlxSignal();

  public var enabled(default, set) = true;
  public var canExit = true;

  var controls(get, never):Controls;

  inline function get_controls()
    return PlayerSettings.player1.controls;

  var subState:FlxSubState;

  inline function switchPage(name:PageName)
  {
    onSwitch.dispatch(name);
  }

  inline function exit()
  {
    onExit.dispatch();
  }

  override function update(elapsed:Float)
  {
    super.update(elapsed);

    if (enabled) updateEnabled(elapsed);
  }

  function updateEnabled(elapsed:Float)
  {
    if (canExit && controls.BACK)
    {
      exit();
      FunkinSound.playOnce(Paths.sound('cancelMenu'));
    }
  }

  function set_enabled(value:Bool)
  {
    return this.enabled = value;
  }

  function openPrompt(prompt:Prompt, onClose:Void->Void)
  {
    enabled = false;
    prompt.closeCallback = function() {
      enabled = true;
      if (onClose != null) onClose();
    }

    FlxG.state.openSubState(prompt);
  }

  override function destroy()
  {
    super.destroy();
    onSwitch.removeAll();
  }
}

class OptionsMenu extends Page
{
  var items:TextMenuList;

<<<<<<< HEAD
  #if FEATURE_TOUCH_CONTROLS
  var backButton:FunkinBackButton;
  var goingBack:Bool = false;
  #end

  /**
   * Camera focus point
   */
  var camFocusPoint:FlxObject;

  final CAMERA_MARGIN:Int = 150;

  public function new(saveDataMenu:SaveDataMenu)
||||||| cf89d672
  #if FEATURE_TOUCH_CONTROLS
  var backButton:FunkinBackButton;
  var goingBack:Bool = false;
  #end

  /**
   * Camera focus point
   */
  var camFocusPoint:FlxObject;

  final CAMERA_MARGIN:Int = 150;

  public function new()
=======
  public function new()
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    super();

    add(items = new TextMenuList());
<<<<<<< HEAD

    createItem("PREFERENCES", function() codex.switchPage(Preferences));
    #if mobile
    if (ControlsHandler.hasExternalInputDevice)
    #end
    createItem("CONTROLS", function() codex.switchPage(Controls));
    // createItem("CONTROL SCHEMES", function() {
    //   FlxG.state.openSubState(new ControlsSchemeMenu());
    // });
    #if FEATURE_LAG_ADJUSTMENT
    createItem("LAG ADJUSTMENT", function() {
      FlxG.sound.music.fadeOut(0.5, 0, function(tw) {
        FunkinSound.playMusic('offsetsLoop',
          {
            startingVolume: 0,
            overrideExisting: true,
            restartTrack: true,
            loop: true
          });
        OptionsState.instance.drumsBG.play(true);
        FlxG.sound.music.fadeIn(1, 1);
      });
||||||| cf89d672

    createItem("PREFERENCES", function() codex.switchPage(Preferences));
    #if mobile
    if (ControlsHandler.hasExternalInputDevice)
    #end
    createItem("CONTROLS", function() codex.switchPage(Controls));
    // createItem("CONTROL SCHEMES", function() {
    //   FlxG.state.openSubState(new ControlsSchemeMenu());
    // });
    #if FEATURE_INPUT_OFFSETS
    createItem("INPUT OFFSETS", function() {
      FlxG.sound.music.fadeOut(0.5, 0, function(tw) {
        FunkinSound.playMusic('offsetsLoop',
          {
            startingVolume: 0,
            overrideExisting: true,
            restartTrack: true,
            loop: true
          });
        OptionsState.instance.drumsBG.play(true);
        FlxG.sound.music.fadeIn(1, 1);
      });
=======
    createItem("PREFERENCES", function() switchPage(Preferences));
    createItem("CONTROLS", function() switchPage(Controls));
    createItem("INPUT OFFSETS", function() {
      #if web
      LoadingState.transitionToState(() -> new LatencyState());
      #else
      FlxG.state.openSubState(new LatencyState());
      #end
    });
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef

<<<<<<< HEAD
      codex.switchPage(Offsets);
    });
    #end
    #if FEATURE_MOBILE_IAP
    createItem("RESTORE PURCHASES", function() {
      InAppPurchasesUtil.restorePurchases();
    });
    #end
    #if android
    createItem("OPEN DATA FOLDER", function() {
      funkin.external.android.DataFolderUtil.openDataFolder();
    });
    #end
    #if FEATURE_NEWGROUNDS
    if (NewgroundsClient.instance.isLoggedIn())
    {
      createItem("LOGOUT OF NG", function() {
        NewgroundsClient.instance.logout(function() {
          // Reset the options menu when logout succeeds.
          // This means the login option will be displayed.
          FlxG.resetState();
        }, function() {
          FlxG.log.warn("Newgrounds logout failed!");
        });
      });
    }
||||||| cf89d672
      codex.switchPage(Offsets);
    });
    #end
    #if FEATURE_MOBILE_IAP
    createItem("RESTORE PURCHASES", function() {
      InAppPurchasesUtil.restorePurchases();
    });
    #end
    #if android
    createItem("OPEN DATA FOLDER", function() {
      funkin.mobile.external.android.DataFolderUtil.openDataFolder();
    });
    #end
    #if FEATURE_NEWGROUNDS
    if (NewgroundsClient.instance.isLoggedIn())
    {
      createItem("LOGOUT OF NG", function() {
        NewgroundsClient.instance.logout(function() {
          // Reset the options menu when logout succeeds.
          // This means the login option will be displayed.
          FlxG.resetState();
        }, function() {
          FlxG.log.warn("Newgrounds logout failed!");
        });
      });
    }
=======
    #if newgrounds
    if (NGio.isLoggedIn) createItem("LOGOUT", selectLogout);
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    else
      createItem("LOGIN", selectLogin);
    #end
<<<<<<< HEAD

    // no need to show an entire new menu for just one option
    if (saveDataMenu.hasMultipleOptions())
    {
      createItem("SAVE DATA OPTIONS", function() {
        codex.switchPage(SaveData);
      });
    }
    else
    {
      createItem("CLEAR SAVE DATA", saveDataMenu.openSaveDataPrompt);
    }

    #if NO_FEATURE_TOUCH_CONTROLS
||||||| cf89d672
    createItem("CLEAR SAVE DATA", function() {
      promptClearSaveData();
    });
    #if NO_FEATURE_TOUCH_CONTROLS
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    createItem("EXIT", exit);
  }

  function createItem(name:String, callback:Void->Void, fireInstantly = false)
  {
    var item = items.createItem(0, 100 + items.length * 100, name, BOLD, callback);
    item.fireInstantly = fireInstantly;
    item.screenCenter(X);
    return item;
  }

<<<<<<< HEAD
  override function update(elapsed:Float):Void
  {
    #if FEATURE_TOUCH_CONTROLS
    backButton.active = (!goingBack) ? !items.busy : true;
    #end
    super.update(elapsed);
  }

  override function set_enabled(value:Bool):Bool
||||||| cf89d672
  override function update(elapsed:Float):Void
  {
    enabled = (prompt == null);
    #if FEATURE_TOUCH_CONTROLS
    backButton.active = (!goingBack) ? !items.busy : true;
    #end
    super.update(elapsed);
  }

  override function set_enabled(value:Bool):Bool
=======
  override function set_enabled(value:Bool)
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  {
    items.enabled = value;
    return super.set_enabled(value);
  }

  /**
   * True if this page has multiple options, excluding the exit option.
   * If false, there's no reason to ever show this page.
   */
  public function hasMultipleOptions():Bool
  {
    return items.length > 2;
  }
<<<<<<< HEAD
||||||| cf89d672

  var prompt:Prompt;

  function promptClearSaveData():Void
  {
    if (prompt != null) return;
    prompt = new Prompt("This will delete
      \nALL your save data.
      \nAre you sure?
    ", Custom("Delete", "Cancel"));
    prompt.create();
    prompt.createBgFromMargin(100, 0xFFFAFD6D);
    prompt.back.scrollFactor.set(0, 0);
    add(prompt);
    prompt.onYes = function() {
      // Clear the save data.
      funkin.save.Save.clearData();
      FlxG.switchState(() -> new funkin.InitState());
    };
    prompt.onNo = function() {
      prompt.close();
      prompt.destroy();
      prompt = null;
    };
  }
=======

  #if newgrounds
  function selectLogin()
  {
    openNgPrompt(NgPrompt.showLogin());
  }

  function selectLogout()
  {
    openNgPrompt(NgPrompt.showLogout());
  }

  /**
   * Calls openPrompt and redraws the login/logout button
   * @param prompt
   * @param onClose
   */
  public function openNgPrompt(prompt:Prompt, ?onClose:Void->Void)
  {
    var onPromptClose = checkLoginStatus;
    if (onClose != null)
    {
      onPromptClose = function() {
        checkLoginStatus();
        onClose();
      }
    }

    openPrompt(prompt, onPromptClose);
  }

  function checkLoginStatus()
  {
    // this shit don't work!! wtf!!!!
    var prevLoggedIn = items.has("logout");
    if (prevLoggedIn && !NGio.isLoggedIn) items.resetItem("logout", "login", selectLogin);
    else if (!prevLoggedIn && NGio.isLoggedIn) items.resetItem("login", "logout", selectLogout);
  }
  #end
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
}

enum abstract PageName(String)
{
  var Options = "options";
  var Controls = "controls";
  var Colors = "colors";
  var Mods = "mods";
  var Preferences = "preferences";
<<<<<<< HEAD
  var Offsets = "offsets";
  var SaveData = "saveData";
||||||| cf89d672
  var Offsets = "offsets";
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
}
>>>>>>> 13e3b504 (Add files via upload)
