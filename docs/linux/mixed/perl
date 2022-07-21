# perl

##### Length of longest line of code

   perl  -ne '$w = length if (length > $w);  END {print "$w\n"}' *.cpp

##### google search

   perl  -e '$i=0;while($i<10){open(WGET,qq/|xargs lynx -dump/);printf WGET qq{http://www.google.com/search?q=site:g33kinfo.com&hl=en&start=$i&sa=N},$i+=10}'|grep '\/\/g33kinfo.com\/'

##### Clean up formatting of a perl script

   perl tidy foo.pl

##### Print a list of installed Perl modules

   perl  -MExtUtils::Installed -E 'say for ExtUtils::Installed->new()->modules()'

##### Use /dev/full to test language I/O-failsafety

   perl  -e 'print 1, 2, 3' > /dev/full

##### Attempt an XSS exploit on commandlinefu.com

   perl  -pi -e 's/<a href="#" onmouseover="console.log('xss! '+document.cookie)" style="position:absolute;height:0;width:0;background:transparent;font-weight:normal;">xss</a>/<\/a>/g'

##### convert unixtime to human-readable

   perl  -le 'print scalar gmtime shift' 1234567890

##### clean up syntax and de-obfuscate perl script

   perl  -MO=Deparse filename.pl | perltidy > new.pl

##### Extract all urls from last firefox sessionstore used in a portable way.

   perl  -lne 'print for /url":"\K[^"]+/g' $(ls -t ~/.mozilla/firefox/*/sessionstore.js | sed q)

##### recursive transform all contents of files to lowercase

   perl  -e "tr/[A-Z]/[a-z]/;" -pi.save $(find . -type f)

##### Perl One Liner to Generate a Random IP Address

   perl  -e 'printf join ".", map int rand 256, 1 .. 4;'

##### Create a Christmas tree with perl

   perl  -MAcme::POE::Tree -e 'Acme::POE::Tree->new()->run()'

##### Dump all of perl's config info

   perl  -le 'use Config; foreach $i (keys %Config) {print "$i : @Config{$i}"}'

##### Show which include directories your installation of Perl is using.

   perl  -le 'print join $/, @INC'

##### Perl One Liner to Generate a Random IP Address

   perl  -le '$,=".";print map int rand 256,1..4'

##### Decode \x{ABCD}-style Unicode escape sequences

   perl  -e "binmode(STDOUT, ':utf8'); print \"$@\""; echo # newline

##### Count number of files in a directory

   perl  -le 'print ~~ map {-s} <*>'

##### List your largest installed packages (on Debian/Ubuntu)

   perl  -ne '$pkg=$1 if m/^Package: (.*)/; print "$1\t$pkg\n" if m/^Installed-Size: (.*)/;' < /var/lib/dpkg/status | sort -rn | less

##### rows2columns

   perl  -le 'print join ", ", map { chomp; $_ } <>'

##### Replace DOS character ^M with newline using perl inline replace.

   perl  -pi -e "s/\r/\n/g" <file>

##### Replaces every ocurrences of 'old' for 'new' in all files specified

   perl  -i -pe "s/old/new/g" *

##### Remove a line from a file using sed (useful for updating known SSH server keys when they change)

   perl  -p -i -e 's/.*\n//g if $.==2' ~/.ssh/known_hosts

##### calculate in commandline with perl

   perl  -e 'print 1+1 ."\n";'

##### print the date of the unix epoch in a human readable form using perl.

   perl  -e 'print scalar localtime $ARGV[0],"\n" ' epoch

##### prints line numbers

   perl  -ne 'print "$. - $_"' infile.txt

##### regex to match an ip

   perl  -wlne 'print $1 if /(([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5])\.([01]?\d\d?|2[0-4]\d|25[0-5]))/' iplist

##### Change all instances of a word in all files in the current directory

   perl  -pi -e 's/foo/bar/g' $(grep -l foo ./*)

##### Change all instances of a word in all files in the current directory and it's sub-directories

   perl  -pi -e 's/foo/bar/g' $(grep -rl foo ./*)

##### Transforms a file to all uppercase.

   perl  -i -ne 'print uc $_' $1

##### Length of longest line of code

   perl  -ne 'push(@w, length); END {printf "%0d\n" , (sort({$b <=> $a} @w))[0]}' *.cpp

##### Print just line 4 from a textfile

   perl  -ne '$. == 4 && print && exit'

##### Print environment information.

   perl  -e 'print "$_=$ENV{$_}\n" for keys %ENV'

##### Remove color codes (special characters) with perl

   perl  -ne 's/\^.{1,7}?m//g;print'

##### Find out if a module is installed in perl (and what version)

   perl  -MModule::Name\ 9999 -e 1

##### Perl One Liner to Generate a Random IP Address

   perl  -e 'printf "%vd\n",pack "N",rand 256**4'

##### Sum some columns on one line in a csv file.

   perl   -ne '@a=split(/,/);  $b=0; foreach $r (1..$#a){ $b+=$a[$r] } print "$a[0],$b\n"' -f file.csv

##### Echo several blank lines

   perl  -e 'print "\n"x100'

##### Make perl crash

   perl  -e '$x = []; push @$x, eval { $x = 1; return $x = 1; }'

##### Transforms a file to all uppercase.

   perl  -pi -e 's/([[:lower:]]+)/uc $1/gsex' file

##### Print sorted list of all installed packages (Debian)

   perl  -m'AptPkg::Cache' -le '$c=AptPkg::Cache->new; for (keys %$c){ push @a, $_ if $c->{$_}->{'CurrentState'} eq 'Installed';} print for sort @a;'

##### Inserting a decimal every third digit

   perl  -lpe'1 while s/^([-+]?\d+)(\d{3})/$1.$2/'

##### Find out if a module is installed in perl

   perl  -MFile::Find=find -MFile::Spec::Functions -Tlwe '$found=1; find { wanted => sub { if (/$ARGV[0]\.pm\z/) { print canonpath $_; $found=0; } }, no_chdir => 1 }, @INC; exit $found;' Collectd/Plugins/Graphite

##### perl one-liner to get the current week number

   perl  -e 'use Date::Calc qw(Today Week_Number); $weekn = Week_Number(Today); print "$weekn\n"'

##### Creating a pseudo-random password

   perl  -e 'print crypt("PASSWORD",int(rand(128))).$/;'

##### yesterday

   perl  -lne 'use POSIX; print strftime("%Y-%m-%d", localtime(time() - 86400));'

##### Replace text in several files

   perl  -p -i -e ?s/New/Old/g? *.html

##### Replace square brackets to underscore in all filenames (current dir.)

   perl  -e 'map { $on=$_; s/\]/_/; rename($on, $_) or warn $!; } <*>;'

##### Convert CSV to TSV

   perl  -pe 's/,/\t/g' < report.csv > report.tsv

##### Art of hacking on perl

   perl  -e 'print "\x41\x72\x74\x20\x6f\x66\x20\x68\x61\x63\x6b\x69\x6e\x67\x2e\x2e\x2e\n" x 100'

##### hello Command-line-fu

   perl  -e 'print "Hello World!", "\n";'

##### Multi-line grep

   perl  -ne 'BEGIN{undef $/}; print "$ARGV\t$.\t$1\n" if m/(first line.*\n.*second line)/mg'

##### sort lines by length

   perl  -lne '$l{$_}=length;END{for(sort{$l{$a}<=>$l{$b}}keys %l){print}}' < /usr/share/dict/words | tail

##### Print a list of installed Perl modules

   perl  -MExtUtils::Installed -e '$inst = ExtUtils::Installed->new(); @modules = $inst->modules(); print join("\n", @modules);'

##### Upgrade all perl modules via CPAN

   perl  -MCPAN -e 'CPAN::Shell->install(CPAN::Shell->r)'

##### String to binary

   perl  -nle 'printf "%0*v8b\n"," ",$_;'

##### urldecoding

   perl  -pe 's/%([0-9a-f]{2})/sprintf("%s", pack("H2",$1))/eig'

##### Sum columns from CSV column $COL

   perl   -ne 'split /,/ ; $a+= $_[3]; END {print $a."\n";}' -f ./file.csv

##### Perl Simple Webserver

   perl  -MIO::All -e 'io(":8080")->fork->accept->(sub { $_[0] < io(-x $1 ? "./$1 |" : $1) if /^GET \/(.*) / })'

##### ssh autocomplete based on ~/.ssh/config

   perl  -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config

##### Draw a Sierpinski triangle

   perl  -e 'print "P1\n256 256\n", map {$_&($_>>8)?1:0} (0..0xffff)' | display

##### Execute a command with a timeout

   perl  -e "alarm 10; exec @ARGV" "somecommand"

##### Print a row of 50 hyphens

   perl  -le'print"-"x50'

##### validate the syntax of a perl-compatible regular expression

   perl  -we 'my $regex = eval {qr/.*/}; die "$@" if $@;'

##### Find out if a module is installed in perl

   perl doc -l Module::Name 2>/dev/null

##### Perl one liner for epoch time conversion

   perl  -pe's/([\d.]+)/localtime $1/e;'

##### FizzBuzz in Perl

   perl  -E 'say$_%15?$_%3?$_%5?$_:Buzz:Fizz:Fizzbuzz for 1..100'

##### Show all available colors on your terminal.

   perl  -E 'say $_,`tput setb $_`," "x(`tput cols`-length("$_")),`tput sgr0` for 0..(`tput colors`-1)'

##### Join lines

   perl  -pe 'eof()||s/\n/<SOMETEXT>/g' file.txt

##### sort lines by length

   perl  -C -e 'print for sort { length $a <=> length $b or $a cmp $b } <>' < /usr/share/dict/words | tail

##### Print environment information.

   perl  -e 'print map { $_ .= "$ENV{$_}\n" } (keys %ENV)'

##### How to pull out lines between two patterns

   perl  -0777 -ne 'print "$1\n" while /word-a(.*?)word-b/gs' filename.txt

##### Do a search-and-replace in a file after making a backup

   perl  -i'.bak' -pe 's/old/new/g' <filename>

##### Do quick arithmetic on numbers from STDIN with any formatting using a perl one liner.

   perl  -ne '$sum += $_ for grep { /\d+/ } split /[^\d\-\.]+/; print "$sum\n"'

##### Remove a range of lines from a file

   perl  -i -ne 'print if $. == 3..5' <filename>

##### Remove duplicate rows of an un-sorted file based on a single column

   perl  -ane 'print unless $x{$F[0]}++' infile > outfile

##### Translate your terminal into Swedish Chef

   perl  -e '$b="bork"; while(<STDIN>){$l=`$_ 2>&1`; $l=~s/[A-Za-z]+/$b/g; print "$l$b\@$b:\$ ";}'

##### Convert files from DOS line endings to UNIX line endings

   perl  -pi -e 's/\r\n?/\n/g'

##### uniq without pre-sorting

   perl  -ne 'print if !$a{$_}++'

##### List all installed PERL modules by CPAN

   perl doc perllocal

##### The top ten commands you use

   perl  -pe 's/.+;//' ~/.zsh_history | sort | uniq -c | sort -r|head -10

##### Prints any IP out of a file

   perl  -ne 'while (/([0-9]+\.){3}[0-9]+/g) {print "$&\n"};' file.txt

##### FizzBuzz One-liner

   perl  -le 'print$_%3?$_%5?$_:"Buzz":$_%5?"Fizz":"FizzBuzz"for 1..100'

##### A command line calculator in Perl

   perl  -e 'for(@ARGV){s/x/*/g;s/v/sqrt /g;s/\^/**/g};print eval(join("",@ARGV)),$/;'

##### Print a list of installed Perl modules

   perl  -MFile::Find=find -MFile::Spec::Functions -Tlwe 'find { wanted => sub { print canonpath $_ if /\.pm\z/ }, no_chdir => 1 }, @INC'

##### re-assign line numbers

   perl  -pe 's/\d+/++$n/e' file.txt

##### convert unixtime to human-readable

   perl  -e 'print scalar(gmtime(1234567890)), "\n"'

##### Decode base64-encoded file in one line of Perl

   perl  -MMIME::Base64 -ne 'print decode_base64($_)' < file.txt > out

##### Replace Every occurrence of a word in a file

   perl  -p -i -e 's/this/that/g' filename

##### modify a file in place with perl

   perl  -pi -e 's/THIS/THAT/g' fileglob*

##### show the real times iso of epochs for a given column

   perl  -F' ' -MDate::Format -pale 'substr($_, index($_, $F[1]), length($F[1]), time2str("%C", $F[1]))' file.log

##### Comma insertions

   perl  -pe '$_=reverse;s/\d{3}(?=\d)(?!.*?\.)/$&,/g;$_=reverse'

##### Recursive Search and Replace

   perl  -pi -e's/<what to find>/<what to replace it with>/g' `grep -Rl <what to find> /<dir>/*`

##### Update twitter with Perl

   perl  -MNet::Twitter -e '$nt = Net::Twitter->new(traits => [qw/API::REST/], username => "YOUR USERNAME", password => "YOUR PASSWORD"); $ud = $nt->update("YOUR TWEET");'

##### Convert Squid unixtime logs in human-readable ones

   perl  -p -e 's/^([0-9]*)/"[".localtime($1)."]"/e' < /var/log/squid/access.log

##### Print a list of standard error codes and descriptions.

   perl  -le 'print $!+0, "\t", $!++ for 0..127'

##### encode HTML entities

   perl  -MHTML::Entities -ne 'print encode_entities($_)' /tmp/subor.txt

##### Listing directory content of a directory with a lot of entries

   perl  -le 'opendir DIR, "." or die; print while $_ = readdir DIR; closedir DIR'

##### Delete only binary files in a directory

   perl  -e 'unlink grep { -f -B } <*>'

##### Tracklist reaplace backspace to '-'

   perl  -e 'rename $_, s/ /-/gr for <*.mp3>'

##### Delete empty directories

   perl  -MFile::Find -e"finddepth(sub{rmdir},'.')"

##### Stripping ^M at end of each line for files

   perl  -pi -e 's:^V^M::g' <filenames>

##### encode a text to url_encoded format

   perl  -MURI::Escape -e 'print uri_escape("String encoded to a url");'

##### Syntax Highlight your Perl code

   perl  -MText::Highlight -E '$h=Text::Highlight->new(ansi=>1); my $text=do{local $/; open my $fh, "<", $ARGV[0]; <$fh>}; say $h->highlight("Perl", $text);' path/to/perl-file.pl

##### wc in perl

   perl  -ane 'END{printf(" %d %d %d\n", $x, $y, $z)} $x+=1; $y+=@F; $z+=length' file.txt

##### Find C/C++ source code comments

   perl  -e 'my $in_comment = 0; while (<>) { $in_comment = 1 if m{\Q/*\E}; print if $in_comment; $in_comment = 0 if m{\Q*/\E}; }' *.cpp

##### Fetch the current human population of Earth

   perl  -Mojo -E 'say g("http://www.census.gov/popclock/data/population/world")->json->{'world'}{'population'};'

##### Lookup errno defintions

   perl  -MPOSIX -e 'print strerror($ARGV[0])."\n";' ERRNO

##### Syntax Highlight your Perl code

   perl  -mText::Highlight -E 'say Text::Highlight->new(ansi => 1)->highlight(Perl => do { local (@ARGV,$/) = shift; <> }) ' path/to/perl-file.pl

##### Produce a pseudo random password with given length in base 64

   perl  -MDigest::SHA -e 'print substr( Digest::SHA::sha256_base64( time() ), 0, $ARGV[0] ) . "\n"' <length>

##### statistics in one line

   perl  -MStatistics::Descriptive -alne 'my $stat = Statistics::Descriptive::Full->new; $stat->add_data(@F[1..4]); print $stat->variance' filename

##### Pick a random line from a file

   perl  -e 'rand($.) < 1 && ($line = $_) while <>;'

##### Sum columns from CSV column $COL

   perl  -F',' -ane '$a += $F[3]; END { print $a }' test.csv

##### drop first column of output by piping to this

   perl  -pE's/(\S+\s*){0,1}//'

##### Happy New Year!

   perl  -e 'print for(map{chr(hex)}("4861707079204E6577205965617221"=~/(.{2})/g)),"\n";'

##### print lib path of perl

   perl  -e 'print map { $_ . "\n" } @INC;'

##### Remove all unused kernels with apt-get

   perl  -e 'chomp($k=`uname -r`); for (</boot/vm*>) {s/^.*vmlinuz-($k)?//; $l.="linux-image-$_ ";} system "aptitude remove $l";'

##### Efficient count files in directory (no recursion)

   perl  -e 'if(opendir D,"."){@a=readdir D;print $#a-1,"\n"}'

##### Perl One Liner to Generate a Random IP Address

   perl  -e 'printf "00:16:3E:%02X:%02X:%02X\n", rand 0xFF, rand 0xFF, rand 0xFF'

##### Multiline Search/Replace with Perl

   perl  -i -pe 'BEGIN{undef $/;} s/START.*?STOP/replace_string/smg' file_to_change

##### Perl Command Line Interpreter

   perl  -dwe 1

##### Perl oneliner to print access rights in octal format

   perl  -e 'printf "%04o\n", (stat shift)[2] & 0777;' file

##### Encode text in Base64 using Perl

   perl  -e 'use MIME::Base64; print encode_base64("encode me plz");'

##### Perl one-liner to determine number of days since the Unix epoch

   perl  -e 'printf qq{%d\n}, time/86400;'

##### Random IPv4 address

   perl  -e 'printf join(".", ("%d")x4 ), map {rand 256} 1..4;'

##### Random IPv4 address

   perl  -le '$,=".";print map int rand 256,1..4'

##### perl insert character on the first line on  your file

   perl  -i~ -0777pe's/^/\!\#\/usr\/bin\/ksh\n/' testing

##### Binary digits Matrix effect

   perl  -e 'use Term::ANSIColor;$|++; while (1) { print color("green")," " x (rand(35) + 1), int(rand(2)), color("reset") }'

##### Legacy MacOS to Unix text convert using perl

   perl  -i -pe 's/\r/\n/g' file

##### Tracklist reaplace backspace to '-'

   perl  -e 'for (<*.mp3>) { $old = $_; s/ /-/g; rename $old, $_ }'

##### Perl check if library is installed

   perl  -e "use SOAP::Lite"

##### Print time and year of file in Solaris (or other Unix ls command that does not have a simple "full-list")

   perl  -e '@F = `ls -1`;while (<@F>){@T = stat($_);print "$_ = " . localtime($T[8]) . "\n";}'

##### Delimiter Hunting

   perl  -e '$f = join("", <>); for (0..127) {$_ = chr($_); if (/[[:print:]]/) {print if index($f, $_) < 0}} print "\n"'

##### AIX : reset aixuser password lastupdate to now using perl

   perl  -e '$now=time; system "chsec -f /etc/security/passwd -s aixuser -a \"lastupdate=$now\""'

##### Print time and year of file in Solaris (or other Unix ls command that does not have a simple

   perl  -e 'foreach (@ARGV) {@T=stat($_); print localtime($T[8])." - ".$_."\n"}'

##### Binary digits Matrix effect

   perl  -e '$|++; while (1) { print " " x (rand(35) + 1), int(rand(2)) }'

##### infile search and replace on N files

   perl  -pi -e's/foo/bar/g' file1 file2 fileN

##### Randomize lines (opposite of | sort)

   perl  -wl -e '@f=<>; for $i (0 .. $#f) { $r=int rand ($i+1); @f[$i, $r]=@f[$r,$i] if ($i!=$r); } chomp @f; print join $/, @f;' try.txt

##### Convert Unix newlines to DOS newlines

   perl  -ple 'BEGIN { $\ = "\r\n" }'

##### perl http get one-liner

   perl  -MLWP::UserAgent -le 'print LWP::UserAgent->new(requests_redirectable => [])->get(shift)->decoded_content()' "http://dazzlepod.com/ip/me.json"

##### find and delete empty directories recursively

   perl  -MFile::Find -e"finddepth(sub{rmdir},'.')"

##### Show full path followed by a command

   perl  -le 'chomp($w=`which $ARGV[0]`);$_=`file $w`;while(/link\b/){chomp($_=(split/`/,$_)[1]);chop$_;$w.=" -> $_";$_=`file $_`;}print "\n$w";' COMMAND_NAME

##### oneline REPL for perl with warnings and readline support

   perl  -MTerm::ReadLine -wde'print "TheAnswer=42\n"'

##### Test if the given argument is a valid ip address.

   perl  -e '$p=qr!(?:0|1\d{0,2}|2(?:[0-4]\d?|5[0-5]?|[6-9])?|[3-9]\d?)!;print((shift=~m/^$p\.$p\.$p\.$p$/)?1:0);' 123.123.123.123

##### Validate an email address

   perl  -e "print 'yes' if `exim -bt $s_email_here | grep -c malformed`;"

##### Rearrange words from a file

   perl  -lane 'print "$F[0]:$F[1]:$F[2]"' myfile

##### hello, world

   perl  -e "''=~('(?{'.('-^@.]|(;,@/{}/),[\\\$['^'],)@)[\`^@,@[*@[@?}.|').'})')"

##### You can't do that on sed

   perl  -p -e 's/\\n/\n/g'

##### Copy timestamps to all lines in a log file

   perl  -ne 'if (/^(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2},\d{3} )/ ) { $t=$1; print $_ } else { print $t . $_ }'

##### Optimal way of deleting huge numbers of files

   perl  -e 'for(<*>){((stat)[9]<(unlink))}'

##### Binary clock

   perl  -e 'for(;;){@d=split("",`date +%H%M%S`);print"\r";for(0..5){printf"%.4b ",$d[$_]}sleep 1}'

##### encode HTML entities

   perl  -MHTML::Entities -ne 'print encode_entities($_)' /tmp/subor.txt

##### simple perl global search and replace in files

   perl  -pi -e 's/localhost/replacementhost/g' *.php

##### Convert epoch time to full date with Perl

   perl  -MPOSIX -le 'print strftime "%F", localtime 1234567890'

##### Perl Command Line Interpreter

   perl  -e 'while(1){print"> ";eval<>}'

##### print scalar gmtime

   perl  -e "print scalar(gmtime(1247848584))"

##### Find C/C++ source code comments

   perl  -ne 'print if m{\Q/*\E}x .. m{\Q*/\E}x or m{\/\/}x' *.c

##### ls output with mode in octal

   perl  -e 'printf "%o\n", (stat shift)[2]&07777' file

##### Convert Ruby 1.8 to 1.9 hash syntax

   perl  -pi -e 's/:([\w\d_]+)(\s*)=>/\1:/g' **/*.rb

##### infile search and replace on N files (including backup of the files)

   perl  -pi.bk -e's/foo/bar/g' file1 file2 fileN

##### Binary clock

   perl  -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'

##### Return IP Address

   perl  -e '$_=`ifconfig eth0`;/\d+.\d+.\d+.\d+ /; print $&,"\n";'

##### run complex remote shell cmds over ssh, without escaping quotes

   perl  -e 'system @ARGV, <STDIN>' ssh host -l user < cmd.txt

##### Draw a Sierpinski triangle

   perl  -le '$l=80;$l2="!" x $l;substr+($l2^=$l2),$l/2,1,"\xFF";{local $_=$l2;y/\0\xFF/ ^/;print;($lf,$rt)=map{substr $l2 x 2,$_%$l,$l;}1,-1;$l2=$lf^$rt;select undef,undef,undef,.1;redo}'

##### rename bunch of movie and srt files to all work with each other

   perl -rename -v 's/720p.+mkv/720p\.mkv/' *.mkv

##### Rename HTML files according to their title tag

   perl  -wlne'/title>([^<]+)/i&&rename$ARGV,"$1.html"' *.html

##### Generate an XKCD #936 style 4 word password

   perl  -F'\s+' -anE 'push @w,$F[1];END{$r.=splice @w,rand @w,1 for(1..4);say $r}' diceware.wordlist.asc

##### Fix UTF-8 text files misinterpreted as ISO 8859-1 due to Byte Order Mark (BOM) of the Unicode Standard.

   perl  -i -pe 's/\xef\xbb\xbf//g' <file>

##### Replace all environment variable references in files with environemnt variable values

   perl  -p -e 's/\$(\w+)/$ENV{$1}/g;' <files...>

##### Replace all environment variable references in files with environemnt variable values

   perl  -p -e 's/\$(\w+)/$ENV{$1}/g;' <files...>

##### Fill a hard drive with ones - like zero-fill, but the opposite :)

   perl  -e '$s="$s\xFF" while length($s)<512; print $s while 1' | dd of=/dev/sdX

##### remove duplicate with change order

   perl  -lne 'print unless $seen{$_}++'

##### Read source of some installed Perl module

   perl doc -m Some::Module

##### prints line numbers

   perl  -pe 'print "$. "' <file>

##### Binary clock

   perl  -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'

##### Parsing URL

   perl  -MURI::Split=uri_split,uri_join -nle '($s,$a,$p,$q,$f)=uri_split($_);print "$s\t$a\t$p\t$q\t$f"'

##### encode HTML entities

   perl  -C -MHTML::Entities -pe 'decode_entities($_);'

##### Joke : prints line numbers in a longest way

   perl  -e 'use strict; use warnings; my $c; my $file = $ARGV[0]; open my $handle, "<", $file or die "$0: $file: $!\n"; while (<$handle>) { print $c++, " " x 5, $_; } close($handle);' <FILE>

##### Convert JSON to YAML

   perl  -MYAML -MJSON -0777 -wnl -e 'print YAML::Dump(decode_json($_))' package.json

##### Convert JSON to YAML

   perl  -MYAML -MJSON -0777 -wnl -e 'print YAML::Dump(decode_json($_))' package.json

##### urldecoding

   perl  -M URI::Escape -lne 'print uri_unescape($_)'

##### Convert YAML to JSON

   perl  -MYAML::XS=LoadFile -MJSON::XS=encode_json -e 'for (@ARGV) { for (LoadFile($_)) { print encode_json($_),"\n" } }' *.yaml

##### find which lines in a file are longer than N characters

   perl  -nle 'print length,"\t",$_ if length > 37' < /path/to/input/file

##### Unix timestamp Solaris

   perl  -le 'print time()'

##### Use /dev/full to test language I/O-failsafety

   perl  -e 'print 1, 2, 3' > /dev/full

##### Attempt an XSS exploit on commandlinefu.com

   perl  -pi -e 's/<a href="#" onmouseover="console.log('xss! '+document.cookie)" style="position:absolute;height:0;width:0;background:transparent;font-weight:normal;">xss</a>/<\/a>/g'

##### Count number of files in a directory

   perl  -le 'print ~~ map {-s} <*>'

##### Multi-line grep

   perl  -ne 'BEGIN{undef $/}; print "$ARGV\t$.\t$1\n" if m/(first line.*\n.*second line)/mg'

##### sort lines by length

   perl  -lne '$l{$_}=length;END{for(sort{$l{$a}<=>$l{$b}}keys %l){print}}' < /usr/share/dict/words | tail

##### Print a list of installed Perl modules

   perl  -MExtUtils::Installed -e '$inst = ExtUtils::Installed->new(); @modules = $inst->modules(); print join("\n", @modules);'

##### Upgrade all perl modules via CPAN

   perl  -MCPAN -e 'CPAN::Shell->install(CPAN::Shell->r)'

##### String to binary

   perl  -nle 'printf "%0*v8b\n"," ",$_;'

##### urldecoding

   perl  -pe 's/%([0-9a-f]{2})/sprintf("%s", pack("H2",$1))/eig'

##### Sum columns from CSV column $COL

   perl   -ne 'split /,/ ; $a+= $_[3]; END {print $a."\n";}' -f ./file.csv

##### Perl Simple Webserver

   perl  -MIO::All -e 'io(":8080")->fork->accept->(sub { $_[0] < io(-x $1 ? "./$1 |" : $1) if /^GET \/(.*) / })'

##### ssh autocomplete based on ~/.ssh/config

   perl  -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config

##### Draw a Sierpinski triangle

   perl  -e 'print "P1\n256 256\n", map {$_&($_>>8)?1:0} (0..0xffff)' | display

##### Execute a command with a timeout

   perl  -e "alarm 10; exec @ARGV" "somecommand"

##### Print a row of 50 hyphens

   perl  -le'print"-"x50'

##### validate the syntax of a perl-compatible regular expression

   perl  -we 'my $regex = eval {qr/.*/}; die "$@" if $@;'

##### Find out if a module is installed in perl

   perl doc -l Module::Name 2>/dev/null

##### Perl one liner for epoch time conversion

   perl  -pe's/([\d.]+)/localtime $1/e;'

##### FizzBuzz in Perl

   perl  -E 'say$_%15?$_%3?$_%5?$_:Buzz:Fizz:Fizzbuzz for 1..100'

##### Show all available colors on your terminal.

   perl  -E 'say $_,`tput setb $_`," "x(`tput cols`-length("$_")),`tput sgr0` for 0..(`tput colors`-1)'

##### Join lines

   perl  -pe 'eof()||s/\n/<SOMETEXT>/g' file.txt

##### sort lines by length

   perl  -C -e 'print for sort { length $a <=> length $b or $a cmp $b } <>' < /usr/share/dict/words | tail

##### Print environment information.

   perl  -e 'print map { $_ .= "$ENV{$_}\n" } (keys %ENV)'

##### How to pull out lines between two patterns

   perl  -0777 -ne 'print "$1\n" while /word-a(.*?)word-b/gs' filename.txt

##### Do a search-and-replace in a file after making a backup

   perl  -i'.bak' -pe 's/old/new/g' <filename>

##### Do quick arithmetic on numbers from STDIN with any formatting using a perl one liner.

   perl  -ne '$sum += $_ for grep { /\d+/ } split /[^\d\-\.]+/; print "$sum\n"'

##### Remove a range of lines from a file

   perl  -i -ne 'print if $. == 3..5' <filename>

##### Remove duplicate rows of an un-sorted file based on a single column

   perl  -ane 'print unless $x{$F[0]}++' infile > outfile

##### Translate your terminal into Swedish Chef

   perl  -e '$b="bork"; while(<STDIN>){$l=`$_ 2>&1`; $l=~s/[A-Za-z]+/$b/g; print "$l$b\@$b:\$ ";}'

##### Convert files from DOS line endings to UNIX line endings

   perl  -pi -e 's/\r\n?/\n/g'

##### uniq without pre-sorting

   perl  -ne 'print if !$a{$_}++'

##### List all installed PERL modules by CPAN

   perl doc perllocal

##### The top ten commands you use

   perl  -pe 's/.+;//' ~/.zsh_history | sort | uniq -c | sort -r|head -10

##### Prints any IP out of a file

   perl  -ne 'while (/([0-9]+\.){3}[0-9]+/g) {print "$&\n"};' file.txt

##### FizzBuzz One-liner

   perl  -le 'print$_%3?$_%5?$_:"Buzz":$_%5?"Fizz":"FizzBuzz"for 1..100'

##### A command line calculator in Perl

   perl  -e 'for(@ARGV){s/x/*/g;s/v/sqrt /g;s/\^/**/g};print eval(join("",@ARGV)),$/;'

##### Print a list of installed Perl modules

   perl  -MFile::Find=find -MFile::Spec::Functions -Tlwe 'find { wanted => sub { print canonpath $_ if /\.pm\z/ }, no_chdir => 1 }, @INC'

##### re-assign line numbers

   perl  -pe 's/\d+/++$n/e' file.txt

##### convert unixtime to human-readable

   perl  -e 'print scalar(gmtime(1234567890)), "\n"'

##### Decode base64-encoded file in one line of Perl

   perl  -MMIME::Base64 -ne 'print decode_base64($_)' < file.txt > out

##### Replace Every occurrence of a word in a file

   perl  -p -i -e 's/this/that/g' filename

##### modify a file in place with perl

   perl  -pi -e 's/THIS/THAT/g' fileglob*

##### show the real times iso of epochs for a given column

   perl  -F' ' -MDate::Format -pale 'substr($_, index($_, $F[1]), length($F[1]), time2str("%C", $F[1]))' file.log

##### Comma insertions

   perl  -pe '$_=reverse;s/\d{3}(?=\d)(?!.*?\.)/$&,/g;$_=reverse'

##### Recursive Search and Replace

   perl  -pi -e's/<what to find>/<what to replace it with>/g' `grep -Rl <what to find> /<dir>/*`

##### Update twitter with Perl

   perl  -MNet::Twitter -e '$nt = Net::Twitter->new(traits => [qw/API::REST/], username => "YOUR USERNAME", password => "YOUR PASSWORD"); $ud = $nt->update("YOUR TWEET");'

##### Convert Squid unixtime logs in human-readable ones

   perl  -p -e 's/^([0-9]*)/"[".localtime($1)."]"/e' < /var/log/squid/access.log

##### Print a list of standard error codes and descriptions.

   perl  -le 'print $!+0, "\t", $!++ for 0..127'

##### encode HTML entities

   perl  -MHTML::Entities -ne 'print encode_entities($_)' /tmp/subor.txt

##### Listing directory content of a directory with a lot of entries

   perl  -le 'opendir DIR, "." or die; print while $_ = readdir DIR; closedir DIR'

##### Delete only binary files in a directory

   perl  -e 'unlink grep { -f -B } <*>'

##### Tracklist reaplace backspace to '-'

   perl  -e 'rename $_, s/ /-/gr for <*.mp3>'

##### Delete empty directories

   perl  -MFile::Find -e"finddepth(sub{rmdir},'.')"

##### Stripping ^M at end of each line for files

   perl  -pi -e 's:^V^M::g' <filenames>

##### encode a text to url_encoded format

   perl  -MURI::Escape -e 'print uri_escape("String encoded to a url");'

##### Syntax Highlight your Perl code

   perl  -MText::Highlight -E '$h=Text::Highlight->new(ansi=>1); my $text=do{local $/; open my $fh, "<", $ARGV[0]; <$fh>}; say $h->highlight("Perl", $text);' path/to/perl-file.pl

##### wc in perl

   perl  -ane 'END{printf(" %d %d %d\n", $x, $y, $z)} $x+=1; $y+=@F; $z+=length' file.txt

##### Find C/C++ source code comments

   perl  -e 'my $in_comment = 0; while (<>) { $in_comment = 1 if m{\Q/*\E}; print if $in_comment; $in_comment = 0 if m{\Q*/\E}; }' *.cpp

##### Fetch the current human population of Earth

   perl  -Mojo -E 'say g("http://www.census.gov/popclock/data/population/world")->json->{'world'}{'population'};'

##### Lookup errno defintions

   perl  -MPOSIX -e 'print strerror($ARGV[0])."\n";' ERRNO

##### Syntax Highlight your Perl code

   perl  -mText::Highlight -E 'say Text::Highlight->new(ansi => 1)->highlight(Perl => do { local (@ARGV,$/) = shift; <> }) ' path/to/perl-file.pl

##### Produce a pseudo random password with given length in base 64

   perl  -MDigest::SHA -e 'print substr( Digest::SHA::sha256_base64( time() ), 0, $ARGV[0] ) . "\n"' <length>

##### statistics in one line

   perl  -MStatistics::Descriptive -alne 'my $stat = Statistics::Descriptive::Full->new; $stat->add_data(@F[1..4]); print $stat->variance' filename

##### Pick a random line from a file

   perl  -e 'rand($.) < 1 && ($line = $_) while <>;'

##### Sum columns from CSV column $COL

   perl  -F',' -ane '$a += $F[3]; END { print $a }' test.csv

##### drop first column of output by piping to this

   perl  -pE's/(\S+\s*){0,1}//'

##### Happy New Year!

   perl  -e 'print for(map{chr(hex)}("4861707079204E6577205965617221"=~/(.{2})/g)),"\n";'

##### print lib path of perl

   perl  -e 'print map { $_ . "\n" } @INC;'

##### Remove all unused kernels with apt-get

   perl  -e 'chomp($k=`uname -r`); for (</boot/vm*>) {s/^.*vmlinuz-($k)?//; $l.="linux-image-$_ ";} system "aptitude remove $l";'

##### Efficient count files in directory (no recursion)

   perl  -e 'if(opendir D,"."){@a=readdir D;print $#a-1,"\n"}'

##### Perl One Liner to Generate a Random IP Address

   perl  -e 'printf "00:16:3E:%02X:%02X:%02X\n", rand 0xFF, rand 0xFF, rand 0xFF'

##### Multiline Search/Replace with Perl

   perl  -i -pe 'BEGIN{undef $/;} s/START.*?STOP/replace_string/smg' file_to_change

##### Perl Command Line Interpreter

   perl  -dwe 1

##### Perl oneliner to print access rights in octal format

   perl  -e 'printf "%04o\n", (stat shift)[2] & 0777;' file

##### Encode text in Base64 using Perl

   perl  -e 'use MIME::Base64; print encode_base64("encode me plz");'

##### Perl one-liner to determine number of days since the Unix epoch

   perl  -e 'printf qq{%d\n}, time/86400;'

##### Random IPv4 address

   perl  -e 'printf join(".", ("%d")x4 ), map {rand 256} 1..4;'

##### Random IPv4 address

   perl  -le '$,=".";print map int rand 256,1..4'

##### perl insert character on the first line on  your file

   perl  -i~ -0777pe's/^/\!\#\/usr\/bin\/ksh\n/' testing

##### Binary digits Matrix effect

   perl  -e 'use Term::ANSIColor;$|++; while (1) { print color("green")," " x (rand(35) + 1), int(rand(2)), color("reset") }'

##### Legacy MacOS to Unix text convert using perl

   perl  -i -pe 's/\r/\n/g' file

##### Tracklist reaplace backspace to '-'

   perl  -e 'for (<*.mp3>) { $old = $_; s/ /-/g; rename $old, $_ }'

##### Perl check if library is installed

   perl  -e "use SOAP::Lite"

##### Print time and year of file in Solaris (or other Unix ls command that does not have a simple "full-list")

   perl  -e '@F = `ls -1`;while (<@F>){@T = stat($_);print "$_ = " . localtime($T[8]) . "\n";}'

##### Delimiter Hunting

   perl  -e '$f = join("", <>); for (0..127) {$_ = chr($_); if (/[[:print:]]/) {print if index($f, $_) < 0}} print "\n"'

##### AIX : reset aixuser password lastupdate to now using perl

   perl  -e '$now=time; system "chsec -f /etc/security/passwd -s aixuser -a \"lastupdate=$now\""'

##### Print time and year of file in Solaris (or other Unix ls command that does not have a simple

   perl  -e 'foreach (@ARGV) {@T=stat($_); print localtime($T[8])." - ".$_."\n"}'

##### Binary digits Matrix effect

   perl  -e '$|++; while (1) { print " " x (rand(35) + 1), int(rand(2)) }'

##### infile search and replace on N files

   perl  -pi -e's/foo/bar/g' file1 file2 fileN

##### Randomize lines (opposite of | sort)

   perl  -wl -e '@f=<>; for $i (0 .. $#f) { $r=int rand ($i+1); @f[$i, $r]=@f[$r,$i] if ($i!=$r); } chomp @f; print join $/, @f;' try.txt

##### Convert Unix newlines to DOS newlines

   perl  -ple 'BEGIN { $\ = "\r\n" }'

##### perl http get one-liner

   perl  -MLWP::UserAgent -le 'print LWP::UserAgent->new(requests_redirectable => [])->get(shift)->decoded_content()' "http://dazzlepod.com/ip/me.json"

##### find and delete empty directories recursively

   perl  -MFile::Find -e"finddepth(sub{rmdir},'.')"

##### Show full path followed by a command

   perl  -le 'chomp($w=`which $ARGV[0]`);$_=`file $w`;while(/link\b/){chomp($_=(split/`/,$_)[1]);chop$_;$w.=" -> $_";$_=`file $_`;}print "\n$w";' COMMAND_NAME

##### oneline REPL for perl with warnings and readline support

   perl  -MTerm::ReadLine -wde'print "TheAnswer=42\n"'

##### Test if the given argument is a valid ip address.

   perl  -e '$p=qr!(?:0|1\d{0,2}|2(?:[0-4]\d?|5[0-5]?|[6-9])?|[3-9]\d?)!;print((shift=~m/^$p\.$p\.$p\.$p$/)?1:0);' 123.123.123.123

##### Validate an email address

   perl  -e "print 'yes' if `exim -bt $s_email_here | grep -c malformed`;"

##### Rearrange words from a file

   perl  -lane 'print "$F[0]:$F[1]:$F[2]"' myfile

##### hello, world

   perl  -e "''=~('(?{'.('-^@.]|(;,@/{}/),[\\\$['^'],)@)[\`^@,@[*@[@?}.|').'})')"

##### You can't do that on sed

   perl  -p -e 's/\\n/\n/g'

##### Copy timestamps to all lines in a log file

   perl  -ne 'if (/^(\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2},\d{3} )/ ) { $t=$1; print $_ } else { print $t . $_ }'

##### Optimal way of deleting huge numbers of files

   perl  -e 'for(<*>){((stat)[9]<(unlink))}'

##### Binary clock

   perl  -e 'for(;;){@d=split("",`date +%H%M%S`);print"\r";for(0..5){printf"%.4b ",$d[$_]}sleep 1}'

##### encode HTML entities

   perl  -MHTML::Entities -ne 'print encode_entities($_)' /tmp/subor.txt

##### simple perl global search and replace in files

   perl  -pi -e 's/localhost/replacementhost/g' *.php

##### Convert epoch time to full date with Perl

   perl  -MPOSIX -le 'print strftime "%F", localtime 1234567890'

##### Perl Command Line Interpreter

   perl  -e 'while(1){print"> ";eval<>}'

##### print scalar gmtime

   perl  -e "print scalar(gmtime(1247848584))"

##### Find C/C++ source code comments

   perl  -ne 'print if m{\Q/*\E}x .. m{\Q*/\E}x or m{\/\/}x' *.c

##### ls output with mode in octal

   perl  -e 'printf "%o\n", (stat shift)[2]&07777' file

##### Convert Ruby 1.8 to 1.9 hash syntax

   perl  -pi -e 's/:([\w\d_]+)(\s*)=>/\1:/g' **/*.rb

##### infile search and replace on N files (including backup of the files)

   perl  -pi.bk -e's/foo/bar/g' file1 file2 fileN

##### Binary clock

   perl  -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'

##### Return IP Address

   perl  -e '$_=`ifconfig eth0`;/\d+.\d+.\d+.\d+ /; print $&,"\n";'

##### run complex remote shell cmds over ssh, without escaping quotes

   perl  -e 'system @ARGV, <STDIN>' ssh host -l user < cmd.txt

##### Draw a Sierpinski triangle

   perl  -le '$l=80;$l2="!" x $l;substr+($l2^=$l2),$l/2,1,"\xFF";{local $_=$l2;y/\0\xFF/ ^/;print;($lf,$rt)=map{substr $l2 x 2,$_%$l,$l;}1,-1;$l2=$lf^$rt;select undef,undef,undef,.1;redo}'

##### rename bunch of movie and srt files to all work with each other

   perl -rename -v 's/720p.+mkv/720p\.mkv/' *.mkv

##### Rename HTML files according to their title tag

   perl  -wlne'/title>([^<]+)/i&&rename$ARGV,"$1.html"' *.html

##### Generate an XKCD #936 style 4 word password

   perl  -F'\s+' -anE 'push @w,$F[1];END{$r.=splice @w,rand @w,1 for(1..4);say $r}' diceware.wordlist.asc

##### Fix UTF-8 text files misinterpreted as ISO 8859-1 due to Byte Order Mark (BOM) of the Unicode Standard.

   perl  -i -pe 's/\xef\xbb\xbf//g' <file>

##### Replace all environment variable references in files with environemnt variable values

   perl  -p -e 's/\$(\w+)/$ENV{$1}/g;' <files...>

##### Binary clock

   perl  -e 'for(;;sleep 1){printf"\r"."%.4b "x6,split"",`date +%H%M%S`}'
