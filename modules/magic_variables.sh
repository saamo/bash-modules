#!/usr/bin/env bash
#
# Magic variables module
#
# Version 1.0.0

readonly __BASE=$(basename "$0")
readonly __DIR=$(cd "$(dirname ${__BASE})" && pwd)
readonly __FILE="${__DIR}/$__BASE"
