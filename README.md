# Use sendemail on linux to send email via SMTP

Bit naughty as this gets around the Gmail SMTP requirement that you log in interactivly before sending via SMTP by wrapping ths whole thing in an expect script.

Password in the expect script is stored in the clear, so this is not to be used on a critical system and even then you must ensure that the relevant file permissions are set for it to be used.

On CentOS you will also need to edit SSL_verify_mode => SSL_VERIFY_PEER in /usr/share/perl5/vendor_perl/IO/Socket/SSL.pm. This will validate the server cert before sending email (trusted CA check but better than no trust at all!)
