#!/usr/bin/bash
cloneurl=`git remote -v | cut -d ' ' -f 1 | cut -d $'\t' -f 2 | head -n 1`

git clone $cloneurl oof;

if make compile ; then
    echo "Command succeeded"
else
    echo "Command failed"
fi
