#!/bin/bash
#
# To stop getting the SSL error when sending to Gmail,
# Edit SSL_verify_mode => SSL_VERIFY_PEER in /usr/share/perl5/vendor_perl/IO/Socket/SSL.pm

sendemail -f "address@gmail.com" -u "test email 4" -t "recipient@icloud.com" -s "smtp.gmail.com:587" \
-o tls=yes -xu address@gmail.com -o message-file=data.txt -a data.txt

-t is 'to'
-u is subject
-f and -xu should be the same (From and Username)
-o reads the mail body from a file
-a adds an attachement
