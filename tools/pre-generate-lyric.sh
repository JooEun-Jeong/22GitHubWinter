#!/bin/bash
README_FILE="song.md"

touch $README_FILE

git add $README_FILE
git commit -m "README 파일을 생성합니다."


echo "우리 모두 다같이 손뼉을" >> $README_FILE
echo "" >> $README_FILE
echo "![poster](resource/title.jpeg)" >> $README_FILE
echo "" >> $README_FILE


git add $README_FILE
git commit -m "노래 제목과 이미지를 입력합니다."

echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE

git commit -m "노래 가사 첫째줄입니다."
echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE
git commit -m "노래 가사 둘쨋줄입니다."
echo "우리 모두 다같이 즐거웁게 노래해" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE
git commit -m "노래 가사 셋째줄입니다."
echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE

git add $README_FILE
git commit -m "노래 가사 넷째줄입니다."
