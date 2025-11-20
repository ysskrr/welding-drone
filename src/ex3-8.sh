#!/bin/bash

# 1) DB 폴더 없으면 생성
[ ! -d DB ] && mkdir DB

# 2) DB 폴더에 5개 파일 생성
for i in {1..5}; do
    echo "file $i" > DB/file$i.txt
done

# 3) 압축
tar -czf DB.tar.gz DB

# 4) train 폴더 생성
[ ! -d train ] && mkdir train

# 5) 심볼릭 링크 생성
for i in {1..5}; do
    ln -sf ../DB/file$i.txt train/file$i.txt
done
