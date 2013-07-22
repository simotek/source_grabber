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

BUILDCOUNT=21
BUILDNUM=1


source source_grabber.sh

# Update Packages in aproxamate order of dependancy
heading "($BUILDNUM/$BUILDCOUNT) Building EFL"
update_project_package $OBS_LOCAL_DIR/efl/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Evas Generic Loaders"
update_project_package $OBS_LOCAL_DIR/evas-generic-loaders/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Elementary"
update_project_package $OBS_LOCAL_DIR/elementary/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Python-EFL"
update_project_package $OBS_LOCAL_DIR/python-efl/
BUILDNUM=$(($BUILDNUM+1))


heading "($BUILDNUM/$BUILDCOUNT) Building Terminology"
update_project_package $OBS_LOCAL_DIR/terminology/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Enlightenment"
update_project_package $OBS_LOCAL_DIR/e17/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Comp-Scale"
update_project_package $OBS_LOCAL_DIR/e-module-comp-scale/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Empris"
update_project_package $OBS_LOCAL_DIR/e-module-empris/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Engage"
update_project_package $OBS_LOCAL_DIR/e-module-engage/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Forecast"
update_project_package $OBS_LOCAL_DIR/e-module-forecasts/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Mail"
update_project_package $OBS_LOCAL_DIR/e-module-mail/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Moon"
update_project_package $OBS_LOCAL_DIR/e-module-moon/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Mpdule"
update_project_package $OBS_LOCAL_DIR/e-module-mpdule/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Module Photo"
update_project_package $OBS_LOCAL_DIR/e-module-photo/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E Theme 23oz"
update_project_package $OBS_LOCAL_DIR/e_theme-23oz/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Etrophy"
update_project_package $OBS_LOCAL_DIR/etrophy/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building E_cho"
update_project_package $OBS_LOCAL_DIR/e_cho/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building EConcentration"
update_project_package $OBS_LOCAL_DIR/econcentration/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Elemines"
update_project_package $OBS_LOCAL_DIR/elemines/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Escape from Booty Bay"
update_project_package $OBS_LOCAL_DIR/efbb/
BUILDNUM=$(($BUILDNUM+1))

heading "($BUILDNUM/$BUILDCOUNT) Building Clouseau"
update_project_package $OBS_LOCAL_DIR/clouseau/
BUILDNUM=$(($BUILDNUM+1))