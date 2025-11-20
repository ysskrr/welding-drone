#!/bin/bash

echo 'export MYENV="Hello Shell"' >> ~/.bashrc
export MYENV="HELLO SHELL"
echo "MYENV: $MYENV"

unset MYENV
echo "unset MYENV: ${MYENV}"
