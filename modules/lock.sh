#!/usr/bin/env bash
#
# Lock file module
#
# Version 1.0.0

readonly PROGNAME=$(basename "$0")
readonly LOCKFILE_DIR=/tmp
readonly LOCK_FD=200

# check if flock can be used
flock_path=$(command -v flock)
[ -z "$flock_path" ] && echo 'flock does not exist or is not executable.' && exit 1

lock() {
    local prefix=$1
    local fd=${2:-$LOCK_FD}
    local lock_file=$LOCKFILE_DIR/$prefix.lock

    # create lock file
    eval "exec $fd>$lock_file"

    # acquire the lock
    flock -n $fd && return 0 || return 1
}
