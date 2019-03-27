#!/usr/bin/expect -f
#
set timeout -1
spawn ./sendemailexample.sh
expect "Password:"
send -- "gstww272wvvs\$\$\$5\r"
expect eof
