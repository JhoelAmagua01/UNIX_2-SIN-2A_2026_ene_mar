#!/bin/bash
export PS4='$0.$LINENO+ '
set -x
pwd
DATE=$(date +%F)
 
for PICTURE in *.jpg
do
   [ -e "$PICTURE" ] || continue
   echo "Renombrando ${PICTURE} a ${DATE}-${PICTURE}"
   mv "$PICTURE" "${DATE}-${PICTURE}"
done
 
set +x