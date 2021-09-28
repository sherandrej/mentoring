#!/bin/bash

FILEPATH=/var/log/syslog
TODAY_DATE=$(date "+%b %d")
echo "listing /var/log"
ls -la /var/log/
echo "$TODAY_DATE"

if [[ -f "$FILEPATH" ]]
  then
	  echo "First 10 lines of $FILEPATH ************************"
		tail -n 10 $FILEPATH
		echo "Last 10 lines of $FILEPATH ************************"
		head -n 10 $FILEPATH
		echo "Todays lines of $FILEPATH ####################"
		grep -c 10 "$TODAY_DATE" "$FILEPATH"
		echo "CRON lines of $FILEPATH ####################"
		grep -wi "CRON" "$FILEPATH"
else 
	echo "file $FILEPATH NOT FOUND :-(" 
fi

read -p "Press ENTER to exit" somevar
exit 0


