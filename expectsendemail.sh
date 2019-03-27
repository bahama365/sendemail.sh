#!/usr/bin/expect -f
#
set timeout -1
spawn ./sendemailexample.sh
expect "Password:"
send -- "yourpassword\r"
expect eof
