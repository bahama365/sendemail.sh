#!/usr/bin/expect -f
#
# If you have special chars in your password you will need to escape them with a \ (i.e \$)
# As yourpassword is stored in clear here, ensure you set correct file permissions
set timeout -1
spawn ./sendemailexample.sh
expect "Password:"
send -- "yourpassword\r"
expect eof
