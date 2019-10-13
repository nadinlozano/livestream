#! /bin/bash

# Run ffmpeg to stream audio to the RTMP server.

arecord -f cd -D plughw:1,0 | ffmpeg  -i pipe:0 -c:a aac -ac 2 -b:a 128k -ar 48000 -preset ultrafast -tune zerolatency -f flv rtmp://localhost:1935/audio/radio
