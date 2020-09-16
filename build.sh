#!/bin/bash

if [[ -z "${GOOS}" ]]; then
  export GOOS="linux"
fi

# This file is meant to be used by the github actions.
if [ $GOOS == "windows" ]
then
    go build -o uav.exe
    echo "uav.exe"
else 
    go build -o uav
    echo "uav"
fi