#!/bin/sh

brew bundle
curl -L git.io/nodebrew | perl - setup
curl -L http://install.perlbrew.pl | bash

