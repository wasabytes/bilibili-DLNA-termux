#!/usr/bin/expect
set bnet [lindex $argv 0]
set bav [lindex $argv 1]
set bpasswd [lindex $argv 2]
spawn ssh root@$bnet "rm bilibili.mp4 && you-get -O bilibili https://www.bilibili.com/video/av$bav --no-caption --debug && ffmpeg -i bilibili.mp4 -c copy bilibili.flv && python3 -m http.server 8000&"
expect {
    "password:" { send "$bpasswd\r" }
}
interact
