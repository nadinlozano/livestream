#! /bin/bash

# Run ffmpeg to stream audio to the RTMP server.

arecord -f cd -D sysdefault:1 | ffmpeg  -i pipe:0 -c:a aac -ac 2 -b:a 128k -r:a 48000 -f flv rtmp://localhost:1935/audio/radio
