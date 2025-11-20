#!/bin/bash

scores=()

avg_score() {
    local len=${#scores[@]}
    if [ "$len" -eq 0 ]; then
        echo 0
        return
    fi
    local s=0
    for v in "${scores[@]}"; do
        s=$((s + v))
    done
    echo $((s / len))
}

gpa_of() {
    local s=$1
    if   [ "$s" -ge 90 ]; then echo "A (4.0)"
    elif [ "$s" -ge 80 ]; then echo "B (3.0)"
    elif [ "$s" -ge 70 ]; then echo "C (2.0)"
    elif [ "$s" -ge 60 ]; then echo "D (1.0)"
    else                     echo "F (0.0)"
    fi
}

while true; do
    echo "===================="
    echo "1) 과목 성적 추가"
    echo "2) 입력된 모든 점수 보기"
    echo "3) 평균 점수 확인"
    echo "4) 평균 등급(GPA) 변환"
    echo "5) 종료"
    echo "===================="
    read -p "메뉴 선택: " m
    case "$m" in
        1)
            read -p "점수(0~100): " s
            if [ "$s" -lt 0 ] || [ "$s" -gt 100 ]; then
                echo "잘못된 점수."
            else
                scores+=("$s")
            fi
            ;;
        2)
            if [ ${#scores[@]} -eq 0 ]; then
                echo "입력된 점수 없음."
            else
                for i in "${!scores[@]}"; do
                    echo "과목$((i+1)): ${scores[$i]}"
                done
            fi
            ;;
        3)
            avg=$(avg_score)
            echo "평균 점수: $avg"
            ;;
        4)
            avg=$(avg_score)
            echo "평균 점수: $avg"
            echo "평균 GPA: $(gpa_of "$avg")"
            ;;
        5)
            echo "종료."
            break
            ;;
        *)
            echo "잘못된 선택."
            ;;
    esac
done
