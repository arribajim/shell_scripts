#!/bin/bash
echo "init $1 for it"

echo "dvdsimple:///dev/cdrom#$1:1 ***********************************************" >> vlctranscode.log
sleep 1
vlc -I dummy -vv "dvdsimple:///dev/cdrom#$1:1" --sout "#transcode{vcodec=h264,vb=3500,width=1920,height=1080,acodec=mp3,ab=192,channels=2,samplerate=44100,scodec=none}:std{access=file{no-overwrite},mux=mp4,dst='$HOME/Videos/season02d4cap0$1.mp4'}"
   sleep 1
echo "complete $1 $HOME/Videos/season02d3cap1$1.mp4"

## sout=

# #transcode{acodec=mp3,ab=192,channels=2,samplerate=44100,scodec=none}:std{access=file{no-overwrite},mux=mp4,dst='$HOME/Videos/season02d4cap0$1$1.mp4'}
