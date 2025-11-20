#!/bin/bash

DB="DB.txt"

while true; do
    echo "======================"
    echo "1) 팀원 정보 추가"
    echo "2) 팀원과 한 일 기록"
    echo "3) 팀원 이름 검색"
    echo "4) 날짜로 수행 내용 검색"
    echo "5) 종료"
    echo "======================"
    read -p "선택: " m
    case $m in
        1)
            read -p "이름: " name
            read -p "생일/전화번호: " info
            echo "[INFO] $name $info" >> $DB
            ;;

        2)
            read -p "날짜(YYYY-MM-DD): " date
            read -p "내용: " content
            echo "[WORK] $date $content" >> $DB
            ;;

        3)
            read -p "검색할 이름: " name
            grep "\[INFO\] $name" $DB
            ;;

        4)
            read -p "검색할 날짜: " date
            grep "\[WORK\] $date" $DB
            ;;

        5)
            break
            ;;

        *)
            echo "잘못된 선택"
            ;;
    esac
done
