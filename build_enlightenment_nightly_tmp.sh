#!/bin/bash



GREEN="\033[01;32m"
YELLOW="\033[01;33m"
RED="\033[01;31m"
BLUE="\033[01;34m"
NONE="\033[00m"

BOLD="\033[1m"
NORMAL="\033[0m"

colorize() {
	local FIRST="$1"
	shift
	echo -e "$SPACES${BOLD}${COLOR}$FIRST${NONE}${NORMAL}$*"
}

heading() {
	local COLOR="$BLUE"
	colorize "$@"
}

BUILDCOUNT=20
BUILDNUM=1


source source_grabber.sh

# Update Packages in aproxamate order of dependancy
heading "($BUILDNUM/$BUILDCOUNT) Building EFL"
 update_project_package $OBS_LOCAL_DIR/efl/
BUILDNUM=$(($BUILDNUM+1))
heading "build elementary"
 update_project_package $OBS_LOCAL_DIR/elementary
 update_project_package $OBS_LOCAL_DIR/evas_generic_loaders
