#!/bin/bash
#set -x
#How long to record in seconds
recordTime=4000
#recordTime=60
URL="http://glzicelv01.vds-is.bynetcdn.com/glz.mp3"
DATE=`date +%Y.%m.%d.%H.%M`
DIRECTORY="$HOME/GLZ"
if [ -d "$DIRECTORY" ]; then
	MP3File="$DIRECTORY/GLZ-$DATE.mp3"
else
	MP3File="$HOME/GLZ-$DATE.mp3"
fi
/usr/bin/ffmpeg -i $URL -t $recordTime -c copy $MP3File
