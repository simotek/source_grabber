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

source source_grabber.sh

# Update Packages in aproxamate order of dependancy
heading "($BUILDNUM/$BUILDCOUNT) Building $1"
 update_project_package $OBS_LOCAL_DIR/$1/
