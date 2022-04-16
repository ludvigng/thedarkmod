#!/bin/bash
if [[ ! -d "$XDG_DATA_HOME/darkmod" ]]; then
  mkdir "$XDG_DATA_HOME/darkmod"
fi
if [[ ! -f "$XDG_DATA_HOME/darkmod/tdm_installer.linux64" ]]; then
  cp /app/bin/tdm_installer.linux64 "$XDG_DATA_HOME/darkmod/"
fi

cd "$XDG_DATA_HOME/darkmod"

if [ "$1" == "install" ] || [[ ! -f ./thedarkmod.x64 ]];then
  exec ./tdm_installer.linux64
else
  exec ./thedarkmod.x64
fi
