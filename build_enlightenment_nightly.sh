#!/bin/bash

#Machine Dependant Vars
OBS_LOCAL_DIR=/home/simon/src/source_grabber_build/X11\:Enlightenment\:Nightly

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

inform() {
    local COLOR="$BLUE"
    colorize "$@"
}

BUILDCOUNT=8
BUILDNUM=1


source source_grabber.sh

# Update Packages in aproxamate order of dependancy
inform "($BUILDNUM/$BUILDCOUNT) Building EFL"
update_project_package $OBS_LOCAL_DIR/efl/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Evas Generic Loaders"
update_project_package $OBS_LOCAL_DIR/evas-generic-loaders/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Elementary"
update_project_package $OBS_LOCAL_DIR/elementary/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Terminology"
update_project_package $OBS_LOCAL_DIR/terminology/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Enlightenment"
update_project_package $OBS_LOCAL_DIR/e17/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Etrophy"
update_project_package $OBS_LOCAL_DIR/etrophy/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Escape from Booty Bay"
update_project_package $OBS_LOCAL_DIR/efbb/
BUILDNUM=$(($BUILDNUM+1))

inform "($BUILDNUM/$BUILDCOUNT) Building Clouseau"
update_project_package $OBS_LOCAL_DIR/clouseau/
BUILDNUM=$(($BUILDNUM+1))