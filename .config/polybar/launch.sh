#!/usr/bin/env sh

killall -q polybar

while pgrep -x polybar > /dev/null; do sleep 1; done

nohup polybar topbar > /dev/null 2>&1 &
nohup polybar bottombar /dev/null 2>&1 &
