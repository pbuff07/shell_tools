#!/bin/bash

# .dockerenv
if ls -al / | grep "docker" > /dev/null 2>&1; then
    echo "当前处于Docker/k8s环境中。"
# mount info
elif mount | grep "docker\|kubepods" > /dev/null 2>&1; then
    echo "当前处于Docker/k8s环境中。"
else
    echo "当前未处于Docker/k8s环境中。"
fi
