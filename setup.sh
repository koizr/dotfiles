#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew bundle

# https://www.jenv.be/
jenv add /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
