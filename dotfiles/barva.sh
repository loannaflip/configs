#!/bin/bash
export BARVA_SOURCE=$(~/barva/scripts/pa-get-default-monitor.sh)
export BARVA_TARGET="#ffabff"
export BARVA_FPS="60"
export BARVA_OUTPUT_FORMAT="TTY"
~/barva/barva || exit 0
