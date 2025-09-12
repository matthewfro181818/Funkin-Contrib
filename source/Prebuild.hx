package source; // Yeah, I know...

import sys.io.File;

/**
 * A script which executes before the game is built.
 */
class Prebuild
{
  static inline final BUILD_TIME_FILE:String = '.build_time';

  static function main():Void
  {
    var start:Float = Sys.time();
    // Sys.println('[INFO] Performing pre-build tasks...');

    saveBuildTime();
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

||||||| cf89d672

    buildCredsFile();

=======

>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
    var end:Float = Sys.time();
    var duration:Float = end - start;
<<<<<<< HEAD
    // Sys.println('[INFO] Finished pre-build tasks in $duration seconds.');
||||||| parent of 3bbe1ef8 (lol2)
    trace('Building...');
=======
>>>>>>> 3bbe1ef8 (lol2)
||||||| parent of b150c43d (lol4)
=======

    var end:Float = Sys.time();
    var duration:Float = end - start;
    // Sys.println('[INFO] Finished pre-build tasks in $duration seconds.');
>>>>>>> b150c43d (lol4)
||||||| parent of 8a1f54ca (lol8)

    var end:Float = Sys.time();
    var duration:Float = end - start;
    // Sys.println('[INFO] Finished pre-build tasks in $duration seconds.');
=======
    trace('Building...');
>>>>>>> 8a1f54ca (lol8)
||||||| parent of 905084b8 (idk2)
    trace('Building...');
=======

    var end:Float = Sys.time();
    var duration:Float = end - start;
    // Sys.println('[INFO] Finished pre-build tasks in $duration seconds.');
>>>>>>> 905084b8 (idk2)
||||||| cf89d672
    trace('[PREBUILD] Finished pre-build tasks in $duration seconds.');
=======
    // Sys.println('[INFO] Finished pre-build tasks in $duration seconds.');
>>>>>>> 7b9efaf2151191d45bbe7857c54f3a06b5380fef
  }

  static function saveBuildTime():Void
  {
    // PostBuild.hx reads this file and computes the total build duration.
    var fo:sys.io.FileOutput = File.write(BUILD_TIME_FILE);
    var now:Float = Sys.time();
    fo.writeDouble(now);
    fo.close();
  }
}
