#! /bin/bash

# Run ffmpeg to stream audio to the RTMP server.

arecord -f cd -D plughw:1,0 | ffmpeg  -i pipe:0 -C:a aac -ac 2 -ar 48000 -preset ultrafast -tune zerolatency -f flv rtmp://192.168.0.12:1935/audio/radio
