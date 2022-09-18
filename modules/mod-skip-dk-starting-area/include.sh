#!/usr/bin/env bash

## GETS THE CURRENT MODULE ROOT DIRECTORY
MOD_SKIP_DK_STARTING_AREA_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"

source $MOD_SKIP_DK_STARTING_AREA_ROOT"/conf/conf.sh.dist"

if [ -f $MOD_SKIP_DK_STARTING_AREA_ROOT"/conf/conf.sh" ]; then
    source $MOD_SKIP_DK_STARTING_AREA_ROOT"/conf/conf.sh"
fi
