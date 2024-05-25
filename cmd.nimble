# Package

version       = "0.2.1"
author        = "Samantha Marshall"
description   = "interactive command prompt"
license       = "BSD 3-Clause"
srcDir        = "src"

skipDirs      = @["tests"]

# Dependencies

requires "nim >= 0.16.0"

# Hooks

task beforeInstall, "Runs before install":
    exec "echo 'Running before install hook'"

task afterInstall, "Runs after install":
    exec "echo 'Running after install hook'"
    exec "echo 'Performing system command'"
    exec "whoami"
