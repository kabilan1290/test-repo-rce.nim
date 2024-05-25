# Package

version       = "1.3.2"
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
  echo "Building filehash"
  exec "mkdir hi"
