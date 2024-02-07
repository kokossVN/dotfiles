#!/usr/bin/env bash

exec maim --select | xclip -selection clipboard -t image/png
