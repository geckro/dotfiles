#!/usr/bin/env bash

killall -q polybar

polybar 2>&1 | tee -a /tmp/polybar1.log & disown
