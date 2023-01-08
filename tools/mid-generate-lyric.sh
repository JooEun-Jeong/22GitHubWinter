#!/bin/bash
README_FILE="song.md"

echo "우리 모두 다같이 고개를(wake up)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE && git commit -m "5번째 줄: 우리 모두 다같이 손뼉을"

echo "우리 모두 다같이 고개를(wake up)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE && git commit -m "6번째 줄: 우리 모두 다같이 손뼉을"

echo "우리 모두 다같이 즐거웁게 노래해" >> $README_FILE
echo "![singing](https://user-images.githubusercontent.com/54920318/211147062-41fc6613-abb5-41a7-be03-31ddf6880a61.png)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE && git commit -m "7번째 줄: 우리 모두 다같이 손뼉을"

echo "우리 모두 다같이 고개를(wake up)" >> $README_FILE
echo "" >> $README_FILE
git add $README_FILE && git commit -m "8번째 줄: 우리 모두 다같이 손뼉을"