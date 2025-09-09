package funkin.modding;

import polymod.Polymod;

<<<<<<< HEAD
@:nullSafety
class PolymodErrorHandler
{
=======
class PolymodErrorHandler
{
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
        funkin.util.WindowUtil.showError('Polymod Script Parsing Error', error.message);
=======
        showAlert('Polymod Script Parsing Error', error.message);
>>>>>>> e11c5f8d (Add files via upload)
      case SCRIPT_RUNTIME_EXCEPTION:
        // A runtime error when running a script.
        logError(error.message);
        // Notify the user via popup.
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Exception', error.message);
=======
        showAlert('Polymod Script Exception', error.message);
>>>>>>> e11c5f8d (Add files via upload)
      case SCRIPT_CLASS_MODULE_NOT_FOUND:
        // A scripted class tried to reference an unknown class or module.
        logError(error.message);

        // Last word is the class name.
<<<<<<< HEAD
        var className:Null<String> = error.message.split(' ').pop();
=======
        var className:String = error.message.split(' ').pop();
>>>>>>> e11c5f8d (Add files via upload)
        var msg:String = 'Import error in ${error.origin}';
        msg += '\nCould not import unknown class ${className}';
        msg += '\nCheck to ensure the class exists and is spelled correctly.';

        // Notify the user via popup.
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Import Error', msg);
=======
        showAlert('Polymod Script Import Error', msg);
>>>>>>> e11c5f8d (Add files via upload)
      case SCRIPT_CLASS_MODULE_BLACKLISTED:
        // A scripted class tried to reference a blacklisted class or module.
        logError(error.message);
        // Notify the user via popup.
<<<<<<< HEAD
        funkin.util.WindowUtil.showError('Polymod Script Blacklist Violation', error.message);
=======
        showAlert('Polymod Script Blacklist Violation', error.message);

>>>>>>> e11c5f8d (Add files via upload)
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
