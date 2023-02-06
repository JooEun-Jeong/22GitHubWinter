#!/bin/bash
SONG_FILE="../song.md" 

echo "우리 모두 다같이 발굴러(쿵쿵)" >> $SONG_FILE
echo "" >> $SONG_FILE
git add $SONG_FILE
git commit -m "종반부 1번째 줄입니다."
echo "우리 모두 다같이 발굴러(쿵쿵)" >> $SONG_FILE
echo "" >> $SONG_FILE
git add $SONG_FILE
git commit -m "종반부 2번째 줄입니다."
echo "우리 모두 다같이 즐거웁게 노래해" >> $SONG_FILE
echo "" >> $SONG_FILE
git add $SONG_FILE
git commit -m "종반부 3번째 줄입니다."
echo "우리 모두 다같이 발굴러(쿵쿵)" >> $SONG_FILE
echo "" >> $SONG_FILE
git add $SONG_FILE
git commit -m "종반부 마지막 줄입니다."
echo "![koong](resource/koong.png)" >> $SONG_FILE
echo "" >> $SONG_FILE
git add $SONG_FILE
git commit -m "종반부 그림."
exit 0