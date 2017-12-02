#!/bin/bash
# Motivation for this little loop was becouse I needed to watch bunch of video and didn't want to look intruduction
# animation on every single of them
# look for the files ending with mp4
for file in *.mp4
do
  # I had problem with escaping - this will sort it out
  NEW_FILE=$(printf '%q' "$file")
  # you need to install ffmpeg -ss is how much sec you want to trim from the begging 6 in my case
  ffmpeg -ss 6 -i "$file" -vcodec copy -acodec copy "result/$file"
done
