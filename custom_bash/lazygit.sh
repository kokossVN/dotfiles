#!/bin/sh


read -p "Commit Message:  "
git add . && git commit -m "$REPLY" && git push
