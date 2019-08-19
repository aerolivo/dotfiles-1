#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#00D7D7}"
bg_end="%{B-}"

function local_time() {
    local time_now=$(date '+%l:%M %p' | awk '{$1=$1};1')
    local symbol=""
    echo -n "${bg_start}${fg_start}${symbol} ${time_now} ${fg_end}${bg_end}"
}

local_time
