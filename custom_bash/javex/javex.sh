#!/usr/bin/env bash

JAVA_PROJECT_PATH="/home/kokoss/learn/java/proj"
[[ $(pwd) != $JAVA_PROJECT_PATH* ]] && echo "This is not Java project" && exit 1
[[ $(pwd) != *bin* ]] && echo "only work in root/bin" && exit 1
[[ $1 = build ]] && javac -d . ../src/*.java ../src/*/*.java && echo "Done!"
[[ $1 = ls ]] && tree

exit 0
