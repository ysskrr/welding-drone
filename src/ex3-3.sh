#!/bin/bash

read -p "과목 수(최소 2): " n
if [ "$n" -lt 2 ]; then
    echo "2개 이상 입력해야 합니다."
    exit 1
fi

sum=0
i=1

grade_of() {
    local s=$1
    if [ "$s" -ge 90 ]; then
        echo "A"
    else
        echo "B"
    fi
}

while [ $i -le $n ]; do
    read -p "${i}번째 점수(0~100): " s
    if [ "$s" -lt 0 ] || [ "$s" -gt 100 ]; then
        echo "점수는 0~100 사이여야 함."
        exit 1
    fi
    g=$(grade_of "$s")
    echo "  → 과목${i} 등급: $g"
    sum=$((sum + s))
    i=$((i + 1))
done

avg=$((sum / n))
avg_grade=$(grade_of "$avg")

echo "----------------------"
echo "평균 점수: $avg"
echo "평균 등급: $avg_grade"
