#!/usr/bin/env bash
#
# Example script
#
# Version 1.1.0

# load magic variables module
. modules/magic_variables.sh

# load log module
. modules/log.sh

# load lock module
. modules/lock.sh

lock || { log "Only one instance of script $__FILE can run at one time."; exit 1; }

# your script starts here

sleep 10
