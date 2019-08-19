#!/usr/bin/env bash

fg_start="%{F#202124}"
fg_end="%{F-}"
bg_start="%{B#EF3895}"
bg_end="%{B-}"

function local_date() {
    local current_date=$(date '+%a %d %b %Y')
    local symbol=""
    echo -n "${bg_start}${fg_start}${symbol} ${current_date}${fg_end}${bg_end}"
}

local_date
