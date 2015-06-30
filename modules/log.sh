#!/usr/bin/env bash
#
# Log module
#
# Version 1.0.0

readonly BASENAME=$(basename "$0")
readonly LOG_FILE="$BASENAME.log"

exec > >(tee -a $LOG_FILE)
exec 2>&1

log() {
	echo "[$(date)]: $*"
}
