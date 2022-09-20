#!/usr/bin/env bash
	
	MOD_TOP_ARENA_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )/" && pwd )"
	
	source $MOD_TOP_ARENA_ROOT"/conf/conf.sh.dist"
	
	if [ -f $MOD_TOP_ARENA_ROOT"/conf/conf.sh" ]; then
	    source $MOD_TOP_ARENA_ROOT"/conf/conf.sh"
	fi
