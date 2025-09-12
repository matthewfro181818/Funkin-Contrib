<<<<<<< HEAD
package funkin.data.story.level;

import funkin.util.SortUtil;
import funkin.ui.story.Level;
import funkin.ui.story.ScriptedLevel;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

@:nullSafety
class LevelRegistry extends BaseRegistry<Level, LevelData, LevelEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the level data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateLevelData()` function.
   */
  public static final LEVEL_DATA_VERSION:thx.semver.Version = "1.0.1";

  public static final LEVEL_DATA_VERSION_RULE:thx.semver.VersionRule = ">=1.0.0 <1.1.0";

  public function new()
  {
    super('LEVEL', 'levels', LEVEL_DATA_VERSION_RULE);
  }

  /**
   * A list of all the story weeks from the base game, in order.
   * @return Array<String>
   */
  public function listBaseGameEntryIds():Array<String>
  {
    // This MUST be hard-coded (overriding the auto-generated method)
    // because the auto-generated method spits out values in alphabetical order.
    return [
      'tutorial',
      'week1',
      'week2',
      'week3',
      'week4',
      'week5',
      'week6',
      'week7',
      'weekend1'
    ];
  }

  /**
   * A list of all the story weeks in the game, in order.
   * Modded levels are in alphabetical order at the end of the list.
   * @return Array<String>
   */
  public function listSortedLevelIds():Array<String>
  {
    var result:Array<String> = listEntryIds();
    result.sort(SortUtil.defaultsThenAlphabetically.bind(listBaseGameEntryIds()));
    return result;
  }
<<<<<<< HEAD

<<<<<<< HEAD
typedef LevelEntryParams = {}
||||||| parent of 76e5592a (Add files via upload)
=======
package funkin.data.story.level;

import funkin.util.SortUtil;
import funkin.ui.story.Level;
import funkin.ui.story.ScriptedLevel;
import funkin.util.tools.ISingleton;
import funkin.data.DefaultRegistryImpl;

@:nullSafety
class LevelRegistry extends BaseRegistry<Level, LevelData, LevelEntryParams> implements ISingleton implements DefaultRegistryImpl
{
  /**
   * The current version string for the level data format.
   * Handle breaking changes by incrementing this value
   * and adding migration to the `migrateLevelData()` function.
   */
  public static final LEVEL_DATA_VERSION:thx.semver.Version = "1.0.1";

  public static final LEVEL_DATA_VERSION_RULE:thx.semver.VersionRule = ">=1.0.0 <1.1.0";

  public function new()
  {
    super('LEVEL', 'levels', LEVEL_DATA_VERSION_RULE);
  }

  /**
   * A list of all the story weeks from the base game, in order.
   * @return Array<String>
   */
  public function listBaseGameEntryIds():Array<String>
  {
    // This MUST be hard-coded (overriding the auto-generated method)
    // because the auto-generated method spits out values in alphabetical order.
    return [
      'tutorial',
      'week1',
      'week2',
      'week3',
      'week4',
      'week5',
      'week6',
      'week7',
      'weekend1'
    ];
  }

  /**
   * A list of all the story weeks in the game, in order.
   * Modded levels are in alphabetical order at the end of the list.
   * @return Array<String>
   */
  public function listSortedLevelIds():Array<String>
  {
    var result:Array<String> = listEntryIds();
    result.sort(SortUtil.defaultsThenAlphabetically.bind(listBaseGameEntryIds()));
    return result;
  }
}
<<<<<<< HEAD
>>>>>>> 76e5592a (Add files via upload)
||||||| parent of b150c43d (lol4)
=======

typedef LevelEntryParams = {}
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)
typedef LevelEntryParams = {}
=======
  /**
   * A list of all installed story weeks that are not from the base game.
   */
  public function listModdedLevelIds():Array<String>
  {
    return listEntryIds().filter(function(id:String):Bool {
      return listBaseGameLevelIds().indexOf(id) == -1;
    });
  }
||||||| parent of 905084b8 (idk2)

  /**
   * A list of all installed story weeks that are not from the base game.
   */
  public function listModdedLevelIds():Array<String>
  {
    return listEntryIds().filter(function(id:String):Bool {
      return listBaseGameLevelIds().indexOf(id) == -1;
    });
  }
=======
>>>>>>> 905084b8 (idk2)
}
<<<<<<< HEAD
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
=======

typedef LevelEntryParams = {}
>>>>>>> 905084b8 (idk2)
