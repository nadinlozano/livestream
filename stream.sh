#! /bin/bash

# Run ffmpeg to stream audio to the RTMP server.

arecord -D plughw:1,0 | ffmpeg  -i pipe:0 \       # audio format goes in 
        -c:a aac \            # Small is big enough
        -ac 2 \               # Fixed framerate at 10fps, somehow this needs to be a string
        -ar 48000 \           # Fixed bitrate
        -tune zerolatency \   # Webcam device
#        -vcodec libx264 \    # h264.1 video encoder
        -preset ultrafast \   # Use the fastest encoding preset#
        -f flv \              # Flash video goes out
#       -an \                 # No audio!
        'rtmp://192.168.0.12/audio/radio'
