#!/bin/bash
function @setWorkingDirectoryInAbsolute() {
	if [[ ! -z "$1" ]]; then
		if [[ -d "$1" ]]; then
			export EBWorkSpace="$1"
			cd "$EBWorkSpace"
		else
			echo "Error at @setWorkingDirectoryInAbsolute: Directory \"$1\" not found"
			exit
		fi
	else
		echo "Error at @setWorkingDirectoryInAbsolute: Missing target"
		exit
	fi
}

function @setWorkingDirectoryInRelative() {
	if [[ ! -z "$1" ]]; then
		if [[ -d "$PWD/$1" ]]; then
			cd "$PWD/$1"
			export EBWorkSpace="$(pwd)"
		else
			echo "Error at @setWorkingDirectoryInRelative: Directory \"$1\" not found"
			exit
		fi
	else
		echo "Error at @setWorkingDirectoryInRelative: Missing target"
		exit
	fi
}

export -f @setWorkingDirectoryInAbsolute
export -f @setWorkingDirectoryInRelative