#!/bin/bash

# 내부 함수: 전달받은 옵션을 ls에 적용
run_ls() {
    eval "ls $1"
}

read -p "ls 옵션 입력(ex: -l, -a, -la): " opt
run_ls "$opt"
