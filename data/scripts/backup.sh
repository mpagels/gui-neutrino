#!/bin/sh

DATE=$(date +%Y-%m-%d_%H-%M-%S)
USRF="/var/tuxbox/config/tobackup.conf"
BAKF="$1/${2:-settings_${DATE}.tar.gz}"

if [ -e "${USRF}" ]; then
# read user-files from $USRF
	TOBACKUP="${USRF}"
	while read i
		do [ "${i:0:1}" = "#" ] || TOBACKUP="$TOBACKUP ${i%%#*}"
		done < $USRF

else
	TOBACKUP="/var/tuxbox/config/"
fi

# check existence
RES=""
for i in $TOBACKUP
	do [ -e "$i" ] && RES="$RES $i"
	done

TOBACKUP=$(echo $RES)

echo Backup to $BAKF

tar -czf $BAKF $TOBACKUP 2>&1 >/dev/null
