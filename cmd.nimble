# Package

version       = "0.2.2"
author        = "Samantha Marshall"
description   = "interactive command prompt"
license       = "BSD 3-Clause"
srcDir        = "src"

skipDirs      = @["tests"]

# Dependencies

requires "nim >= 0.16.0"

# Hooks
task before install, "Runs before install":
  exec "echo 'Running before install hook'"
  exec "echo 'Creating a directory before install'"
  exec "mkdir -p /tmp/beforeInstallDir"

task after install, "Runs after install":
  exec "echo 'Running after install hook'"
  exec "echo 'Creating a directory after install'"
  exec "mkdir -p /tmp/afterInstallDir"
