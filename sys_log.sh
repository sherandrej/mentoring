#!/bin/bash

FILEPATH=/var/log/syslog
TODAY_DATE=$(date "+%b %d")
echo "listing /var/log"
ls -la /var/log/
echo "deleting files from out_logs"
find ./out_logs -mmin +10 -type f -exec rm -f {} \;
#exit 0
if [[ -f "$FILEPATH" ]]
  then
	  echo "First 10 lines of $FILEPATH ************************"
		tail -n 10 $FILEPATH > out_logs/first10_syslog.txt
		echo "Last 10 lines of $FILEPATH ************************"
		head -n 10 $FILEPATH > out_logs/last10_syslog.txt
		echo "Todays lines of $FILEPATH ####################"
		grep -c 10 "$TODAY_DATE" "$FILEPATH" > out_logs/today10_syslog.txt
		echo "CRON lines of $FILEPATH ####################"
		grep -wi "CRON" "$FILEPATH" > out_logs/cron_syslog.txt
else 
	echo "file $FILEPATH NOT FOUND :-(" 
fi

read -p "Press ENTER to exit" somevar
exit 0


