#!/usr/bin/env bash

JAVA_PROJECT_PATH="/home/kokoss/learn/java/proj"
JAVA_PROJECT_BIN_PATH=$(pwd)
JAVA_PROJECT_ROOT_PATH=${JAVA_PROJECT_BIN_PATH%*/bin}

[[ $(pwd) != $JAVA_PROJECT_PATH* ]] && echo "This is not Java project" && exit 1
[[ $(pwd) != *bin ]] && echo "only work in root/bin" && exit 1
[[ $@ = *build* ]] && [[ $(find $JAVA_PROJECT_ROOT_PATH/src/* -type d) ]] && echo "Detected package" && javac -d . ../src/*/*.java ||
	javac -d . ../src/*.java && echo "Done!"

[[ $@ = *run* ]] && (test -e $(pwd)/App.* && java App)

[[ $1 = tree ]] && tree

exit 0
