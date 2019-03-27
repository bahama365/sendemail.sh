#!/bin/bash
#
# To stop getting the SSL error when sending to Gmail,
# Edit SSL_verify_mode => SSL_VERIFY_PEER in /usr/share/perl5/vendor_perl/IO/Socket/SSL.pm

sendemail -f "gstwhetbs@gmail.com" -u "test email 4" -t "chanscombe@icloud.com" -s "smtp.gmail.com:587" -o tls=yes -xu gstwhetbs@gmail.com -o message-file=data.txt -a data.txt

