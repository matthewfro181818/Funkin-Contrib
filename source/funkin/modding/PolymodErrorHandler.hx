package funkin.modding;

import polymod.Polymod;

<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
@:nullSafety
||||||| parent of 8a1f54ca (lol8)
@:nullSafety
=======
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======
@:nullSafety
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
@:nullSafety
=======
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
@:nullSafety
=======
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
class PolymodErrorHandler
{
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
||||||| parent of b150c43d (lol4)
=======
@:nullSafety
>>>>>>> b150c43d (lol4)
class PolymodErrorHandler
{
<<<<<<< HEAD
  /**
   * Show a popup with the given text.
   * This displays a system popup, it WILL interrupt the game.
   * Make sure to only use this when it's important, like when there's a script error.
   *
   * @param name The name at the top of the popup.
   * @param desc The body text of the popup.
   */
  public static function showAlert(name:String, desc:String):Void
  {
    lime.app.Application.current.window.alert(desc, name);
  }

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
  /**
   * Show a popup with the given text.
   * This displays a system popup, it WILL interrupt the game.
   * Make sure to only use this when it's important, like when there's a script error.
   *
   * @param name The name at the top of the popup.
   * @param desc The body text of the popup.
   */
  public static function showAlert(name:String, desc:String):Void
  {
    lime.app.Application.current.window.alert(desc, name);
  }

=======
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
=======
  /**
   * Show a popup with the given text.
   * This displays a system popup, it WILL interrupt the game.
   * Make sure to only use this when it's important, like when there's a script error.
   *
   * @param name The name at the top of the popup.
   * @param desc The body text of the popup.
   */
  public static function showAlert(name:String, desc:String):Void
  {
    lime.app.Application.current.window.alert(desc, name);
  }

>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
  /**
   * Show a popup with the given text.
   * This displays a system popup, it WILL interrupt the game.
   * Make sure to only use this when it's important, like when there's a script error.
   *
   * @param name The name at the top of the popup.
   * @param desc The body text of the popup.
   */
  public static function showAlert(name:String, desc:String):Void
  {
    lime.app.Application.current.window.alert(desc, name);
  }

=======
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
=======
  /**
   * Show a popup with the given text.
   * This displays a system popup, it WILL interrupt the game.
   * Make sure to only use this when it's important, like when there's a script error.
   *
   * @param name The name at the top of the popup.
   * @param desc The body text of the popup.
   */
  public static function showAlert(name:String, desc:String):Void
  {
    lime.app.Application.current.window.alert(desc, name);
  }

>>>>>>> cd960b0a (idk7)
  public static function onPolymodError(error:PolymodError):Void
  {
    // Perform an action based on the error code.
    switch (error.code)
    {
      case FRAMEWORK_INIT, FRAMEWORK_AUTODETECT, SCRIPT_PARSING:
        // Unimportant.
        return;

      case MOD_LOAD_PREPARE, MOD_LOAD_DONE:
        logInfo('LOADING MOD - ${error.message}');

      case MISSING_ICON:
        logWarn('A mod is missing an icon. Please add one.');

      case SCRIPT_PARSE_ERROR:
        // A syntax error when parsing a script.
        logError(error.message);
        // Notify the user via popup.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
=======
        showAlert('Polymod Script Parsing Error', error.message);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        showAlert('Polymod Script Parsing Error', error.message);
=======
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
=======
        showAlert('Polymod Script Parsing Error', error.message);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        showAlert('Polymod Script Parsing Error', error.message);
=======
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
=======
        showAlert('Polymod Script Parsing Error', error.message);
>>>>>>> cd960b0a (idk7)
      case SCRIPT_RUNTIME_EXCEPTION:
        // A runtime error when running a script.
        logError(error.message);
        // Notify the user via popup.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
=======
        showAlert('Polymod Script Exception', error.message);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        showAlert('Polymod Script Exception', error.message);
=======
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
=======
        showAlert('Polymod Script Exception', error.message);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        showAlert('Polymod Script Exception', error.message);
=======
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
=======
        showAlert('Polymod Script Exception', error.message);
>>>>>>> cd960b0a (idk7)
      case SCRIPT_CLASS_MODULE_NOT_FOUND:
        // A scripted class tried to reference an unknown class or module.
        logError(error.message);

        // Last word is the class name.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        var className:Null<String> = error.message.split(' ').pop();
=======
        var className:String = error.message.split(' ').pop();
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        var className:String = error.message.split(' ').pop();
=======
        var className:Null<String> = error.message.split(' ').pop();
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        var className:Null<String> = error.message.split(' ').pop();
=======
        var className:String = error.message.split(' ').pop();
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        var className:String = error.message.split(' ').pop();
=======
        var className:Null<String> = error.message.split(' ').pop();
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        var className:Null<String> = error.message.split(' ').pop();
=======
        var className:String = error.message.split(' ').pop();
>>>>>>> cd960b0a (idk7)
||||||| cf89d672
        var className:Null<String> = error.message.split(' ').pop();
=======
        var className:String = error.message.split(' ').pop();
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
        var msg:String = 'Import error in ${error.origin}';
        msg += '\nCould not import unknown class ${className}';
        msg += '\nCheck to ensure the class exists and is spelled correctly.';

        // Notify the user via popup.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
=======
        showAlert('Polymod Script Import Error', msg);
>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        showAlert('Polymod Script Import Error', msg);
=======
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
=======
        showAlert('Polymod Script Import Error', msg);
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        showAlert('Polymod Script Import Error', msg);
=======
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
=======
        showAlert('Polymod Script Import Error', msg);
>>>>>>> cd960b0a (idk7)
      case SCRIPT_CLASS_MODULE_BLACKLISTED:
        // A scripted class tried to reference a blacklisted class or module.
        logError(error.message);
        // Notify the user via popup.
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
=======
        showAlert('Polymod Script Blacklist Violation', error.message);

>>>>>>> e11c5f8d (Add files via upload)
||||||| parent of b150c43d (lol4)
        showAlert('Polymod Script Blacklist Violation', error.message);

=======
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
=======
        showAlert('Polymod Script Blacklist Violation', error.message);

>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
        showAlert('Polymod Script Blacklist Violation', error.message);

=======
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
>>>>>>> 905084b8 (idk2)
||||||| parent of cd960b0a (idk7)
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
=======
        showAlert('Polymod Script Blacklist Violation', error.message);

>>>>>>> cd960b0a (idk7)
      default:
        // Log the message based on its severity.
        switch (error.severity)
        {
          case NOTICE:
            logInfo(error.message);
          case WARNING:
            logWarn(error.message);
          case ERROR:
            logError(error.message);
        }
    }
  }

  static function logInfo(message:String):Void
  {
    trace('[INFO-] ${message}');
  }

  static function logError(message:String):Void
  {
    trace('[ERROR] ${message}');
  }

  static function logWarn(message:String):Void
  {
    trace('[WARN-] ${message}');
  }
}
