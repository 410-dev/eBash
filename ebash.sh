#!/bin/bash
if [[ -f "$1" ]]; then
	chmod +x "$1"
	export EBHOME="$(dirname "$0")"
	cd "${EBHOME}/base"
	while read DATAFILE
	do
		source "${DATAFILE}"
	done <<< "$(ls -1 | grep ".ebbasesrc")"
	cd ..
	"$1"
else
	echo "File not found."
fi