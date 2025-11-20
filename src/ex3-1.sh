#!/bin/bash

# 인자 2개 체크
if [ $# -ne 2 ]; then
    echo "사용법: $0 num1 num2"
    exit 1
fi

a=$1
b=$2

echo "$a + $b = $((a + b))"
echo "$a - $b = $((a - b))"
echo "$a * $b = $((a * b))"

if [ "$b" -eq 0 ]; then
    echo "$a / $b = 0으로 나눌 수 없음"
else
    echo "$a / $b = $((a / b))"
fi

