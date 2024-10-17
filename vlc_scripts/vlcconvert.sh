#!/bin/bash
echo "init batch"
season=$1
chapter=$2

echo "season $1 disc $2"

for i in {1..6}
do
   echo "dvdsimple:///dev/cdrom#$i:1 ***********************************************" >> vlctranscode.log
   sleep 1
   vlc -I dummy -vv "dvdsimple:///dev/cdrom#$i:1" --sout "#transcode{vcodec=h264,vb=3500,width=1920,height=1080,acodec=mp3,ab=192,channels=2,samplerate=44100,scodec=none}:std{access=file{no-overwrite},mux=mp4,dst='$HOME/Videos/season0$1d$2cap0$i.mp4'}" vlc://quit >> vlctranscode.log
   sleep 1
echo "complete $1 $HOME/Videos/season0$1d$2cap0$i.mp4" >> vlctranscode.log
ls -la /home/arribajim/Videos/ >> vlctranscode.log
done

echo "Done" >> vlctranscode.log
