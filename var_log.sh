 #!/bin/bash
 ls -la /var/log
 PAUSE=5
 echo "Waiting $PAUSE sec"
 read -t  $PAUSE
 exit 0