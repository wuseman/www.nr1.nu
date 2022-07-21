# mailutil

##### Backup (archive) your Gmail IMAP folders.

   mailutil  transfer {imap.gmail.com/ssl/user=john@gmail.com} Gmail/

##### move messages directly from one IMAP inbox to another

   mailutil  appenddelete '{src.mailsrv1.com:993/imap/norsh/notls/ssl/novalidate-cert/user="username"}INBOX' '{dest.mailsrv2.com:143/imap/norsh/notls/user="username"}INBOX'

##### Backup (archive) your Gmail IMAP folders.

   mailutil  transfer {imap.gmail.com/ssl/user=john@gmail.com} Gmail/

##### move messages directly from one IMAP inbox to another

   mailutil  appenddelete '{src.mailsrv1.com:993/imap/norsh/notls/ssl/novalidate-cert/user="username"}INBOX' '{dest.mailsrv2.com:143/imap/norsh/notls/user="username"}INBOX'
