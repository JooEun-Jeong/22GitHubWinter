#!/bin/bash
README_FILE="../song.md"

touch $README_FILE

git add $README_FILE
git commit -m "README 파일을 생성합니다."


echo "우리 모두 다같이 손뼉을" >> $README_FILE
echo "" >> $README_FILE
echo "![poster](resource/image.png)" >> $README_FILE
echo "" >> $README_FILE


git add $README_FILE
git commit -m "제목 : 우리 모두 다 같이 손뼉을"

echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE

git commit -m "우리 모두 다같이 손벽을(짝짝)"
echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE
git commit -m "우리 모두 다같이 손벽을(짝짝)"
echo "우리 모두 다같이 즐거웁게 노래해" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE
git commit -m "우리 모두 다같이 즐거웁게 노래해"
echo "우리 모두 다같이 손벽을(짝짝)" >> $README_FILE
echo "" >> $README_FILE

git add $README_FILE
git commit -m "우리 모두 다같이 손벽을(짝짝)"
