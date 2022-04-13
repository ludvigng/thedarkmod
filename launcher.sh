#!/bin/bash
if [[ ! -d "$XDG_DATA_HOME/TheDarkMod" ]]; then
  mkdir "$XDG_DATA_HOME/TheDarkMod"
fi
if [[ ! -f "$XDG_DATA_HOME/TheDarkMod/tdm_installer.linux64" ]]; then
  cp /app/bin/tdm_installer.linux64 "$XDG_DATA_HOME/TheDarkMod/"
fi

cd "$XDG_DATA_HOME/TheDarkMod"

if [ "$1" == "install" ] || [[ ! -f ./thedarkmod.x64 ]];then
  exec ./tdm_installer.linux64
else
  exec ./thedarkmod.x64
fi
