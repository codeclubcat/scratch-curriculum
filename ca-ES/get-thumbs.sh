#!/bin/bash

ids=$1
if [[ -z $ids || ! -f $ids ]]; then
   echo "usage: get-thumbs.sh <video_ids_file>"
   exit 1
fi

dir=$(dirname $ids)
i=$((1))
for id in $(cat $ids); do
   wget -O $dir/$i.jpg http://img.youtube.com/vi/$id/0.jpg
   convert $dir/$i.jpg -crop 480x270+0+45 $dir/$i.png
   composite -gravity center video_play_overlay.png $dir/$i.png $dir/$i.png
   rm -f $dir/$i.jpg
   i=$((i+1))
done
