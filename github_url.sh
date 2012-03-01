#!/bin/bash

cd "$1"
git remote show origin -n | grep "Fetch URL" | sed 's/[[:space:]]*Fetch URL: git@github.com:\([A-Za-z0-9]*\)\/\([A-Za-z0-9]*\).git[[:space:]]*/https:\/\/github.com\/\1\/\2\/commit\//' | sed "s/\$/$2/" | pbcopy

