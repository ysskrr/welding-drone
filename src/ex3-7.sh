#!/bin/bash

while true; do
    echo "===================="
    echo "1) 사용자 정보"
    echo "2) CPU 사용률(top)"
    echo "3) 메모리 사용량(free)"
    echo "4) 디스크 사용량(df)"
    echo "5) 종료"
    echo "===================="
    read -p "메뉴 선택: " m

    case $m in
        1) who ;;
        2) top -bn1 | head -n 5 ;;
        3) free -h ;;
        4) df -h ;;
        5) break ;;
        *) echo "잘못된 선택" ;;
    esac
done
