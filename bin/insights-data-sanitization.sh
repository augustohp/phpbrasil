#!/usr/bin/env sh
# vim: set ft=sh ai ts=2 sw=2 nowrap:
#
# Normalizes "Insights" downloaded from a group.

set -e # Stops when an error occurs

if [ -n "${DEBUG}" ] # $DEBUG is not emoty
then
	set -x # Outputs commands being executed
fi

# Current Script Directory (https://stackoverflow.com/questions/29832037/how-to-get-script-directory-in-posix-sh/29835459)
CSD=$(CDPATH='' cd -- "$(dirname -- "$0")" && pwd)
# DATA Directory
DATA=$(realpath "${CSD}/../data")

for csv in ~/Downloads/*.csv
do
	csv_basename=$(basename "$csv")
	case "${csv_basename}" in
		*Growth*|*Engagement*|*Members*)
			mv "${csv}" "${DATA}/${csv_basename}"
			;; 
		*)
			echo "Ignoring '${csv}'." >&2
			;;
	esac
done
