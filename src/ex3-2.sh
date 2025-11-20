#!/bin/bash

# bc 없으면 설치 필요: sudo apt install bc

echo "y = 12 * x^2 계산"
read -p "입력할 x 값 개수(최소 2개): " n

if [ "$n" -lt 2 ]; then
    echo "2개 이상 입력해야 합니다."
    exit 1
fi

i=1
while [ $i -le $n ]; do
    read -p "x${i} 값: " x
    y=$(echo "scale=4; 12 * $x * $x" | bc)
    echo "x=${x} → y=${y}"
    i=$((i + 1))
done
