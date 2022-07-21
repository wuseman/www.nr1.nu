# recoll

##### full text(CJK) search mails and link the result to $MAILDIR/bingo/cur/

   recoll  -t -q "keyword" | grep message/rfc822 | sed -s 's,^.*\('$MAILDIR'[^]]*\)\].*$,\"\1\",' | xargs ln -sft $MAILDIR/bingo/cur/
