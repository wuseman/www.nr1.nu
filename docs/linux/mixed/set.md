# set

##### system beep off

   set term -bfreq 0

##### Get the available physical ports and their information

   set serial -g /dev/ttyS[0-9]* | grep -v "unknown"

##### MS-DOS only: Enable variable expansion from inside of FOR loops with !varname!

   set local enabledelayedexpansion

##### [zsh]: what does 'nyae' mean?

   set opt correct

##### Robust expansion (i.e. crash) of bash variables with a typo

   set  -eu

##### Restore the keyboard for qwerty users.

   set xkbmap us

##### color grep with specification of colors with GREP_COLOR env variable

   set env GREP_COLOR '1;37;41'

##### Search through your command line history

   set  -o vi

##### Oracle: set column separator

   set  colsep "{char}"

##### Turn off SE Linux

   set enforce 0

##### prevents replace an existing file by mistake

   set  -o noclobber

##### use vi key bindings at the command line

   set  -o vi

##### Put readline into vi mode

   set  -o vi

##### system beep off

   set term -blength 0

##### Set file access control lists

   set facl -m u:john:r myfile

##### Set a posix shell to echo all commands that it's about to execute, after all expansions have been done.

   set  -x

##### force unsupported i386 commands to work on amd64

   set arch i386 [command [args]]

##### use SHIFT + ALT to toggle between two keyboard layouts

   set xkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,es

##### Put terminal into vi mode

   set  -o vi

##### ttyS0 - terminal on serial connection

   set serial -q /dev/ttyS0

##### List bash functions defined in .bash_profile or .bashrc

   set  | fgrep " ()"

##### show hidden chars in vi

   set  list / set nolist

##### start a vnc server session to connect to a gdm login screen

   set  $(ps -e o command= | grep "^/usr/bin/X "); while [ x"$1" != x"-auth" ]; do shift; done; sudo x11vnc -display :0 -auth "$2"

##### Change the homepage of Firefox

   set  str=user_pref("browser.startup.homepage", "http://www.fcisolutions.com/"); cd = "%APPDATA%\Mozilla\Firefox\Profiles\*.default\" echo %str%>>prefs.js

##### Change framebuffer font

   set font cybercafe

##### Hiding and Show files on Mac OS X

   set file -a V foo.bar; setfile -a v foo.bar;

##### Prevent overwriting file when using redirection

   set  -o noclobber

##### Configuring proxy client on terminal without leaving password on screen or in bash_history

   set -proxy () { P=webproxy:1234; DU="fred"; read -p "username[$DU]:" USER; printf "%b"; UN=${USER:-$DU}; read -s -p "password:" PASS; printf "%b" "\n"; export http_proxy="http://${UN}:${PASS}@$P/"; export ftp_proxy="http://${UN}:${PASS}@$P/"; }

##### Use vi commands to edit your command lines

   set  -o vi; ls -l jnuk<ESC>bCjunk

##### Set keyboard layout in X

   set xkbmap it

##### Tracing shell scripts with time stamps

   set  -x && PS4='+\t '

##### Replace the Caps Lock key with Control

   set xkbmap -option ctrl:nocaps

##### Set X keymap to dvorak and fix the Ctrl key.

   set xkbmap dvorak '' ctrl:nocaps

##### For setting of double keyboard layouts: us, ru, but you can write in phonetic like www.translit.ru

   set xkbmap -layout us,ru -variant basic,phonetic -option -option grp:switch,grp:caps_toggle

##### print line and execute it in BASH

   set  -x

##### Setting gdb in memory allocation debugging mode under MAC OS X

   set  env DYLD_INSERT_LIBRARIES = /usr/lib/libgmalloc.dylib;b szone_error

##### zsh variable behave like bash variable

   set opt shwordsplit

##### Use vi style for edit command line.

   set  -o vi

##### bash screensaver off

   set term -powersave off -blank 0

##### Change caps lock to backspace (Works on Ubuntu 14.04)

   set xkbmap -option caps:backspace

##### Poor man's

   set  +e +u; dd if=/dev/urandom of="/media/usb1/$$";sync;sync

##### Robust expansion (i.e. crash) of bash variables with a typo

   set  -eu

##### prevents replace an existing file by mistake

   set  -o noclobber

##### use vi key bindings at the command line

   set  -o vi

##### Put readline into vi mode

   set  -o vi

##### system beep off

   set term -blength 0

##### Set file access control lists

   set facl -m u:john:r myfile

##### Set a posix shell to echo all commands that it's about to execute, after all expansions have been done.

   set  -x

##### force unsupported i386 commands to work on amd64

   set arch i386 [command [args]]

##### use SHIFT + ALT to toggle between two keyboard layouts

   set xkbmap -option grp:switch,grp:alt_shift_toggle,grp_led:scroll us,es

##### Put terminal into vi mode

   set  -o vi

##### ttyS0 - terminal on serial connection

   set serial -q /dev/ttyS0

##### List bash functions defined in .bash_profile or .bashrc

   set  | fgrep " ()"

##### show hidden chars in vi

   set  list / set nolist

##### start a vnc server session to connect to a gdm login screen

   set  $(ps -e o command= | grep "^/usr/bin/X "); while [ x"$1" != x"-auth" ]; do shift; done; sudo x11vnc -display :0 -auth "$2"

##### Change the homepage of Firefox

   set  str=user_pref("browser.startup.homepage", "http://www.fcisolutions.com/"); cd = "%APPDATA%\Mozilla\Firefox\Profiles\*.default\" echo %str%>>prefs.js

##### Change framebuffer font

   set font cybercafe

##### Hiding and Show files on Mac OS X

   set file -a V foo.bar; setfile -a v foo.bar;

##### Prevent overwriting file when using redirection

   set  -o noclobber

##### Configuring proxy client on terminal without leaving password on screen or in bash_history

   set -proxy () { P=webproxy:1234; DU="fred"; read -p "username[$DU]:" USER; printf "%b"; UN=${USER:-$DU}; read -s -p "password:" PASS; printf "%b" "\n"; export http_proxy="http://${UN}:${PASS}@$P/"; export ftp_proxy="http://${UN}:${PASS}@$P/"; }

##### Use vi commands to edit your command lines

   set  -o vi; ls -l jnuk<ESC>bCjunk

##### Set keyboard layout in X

   set xkbmap it

##### Tracing shell scripts with time stamps

   set  -x && PS4='+\t '

##### Replace the Caps Lock key with Control

   set xkbmap -option ctrl:nocaps

##### Set X keymap to dvorak and fix the Ctrl key.

   set xkbmap dvorak '' ctrl:nocaps

##### For setting of double keyboard layouts: us, ru, but you can write in phonetic like www.translit.ru

   set xkbmap -layout us,ru -variant basic,phonetic -option -option grp:switch,grp:caps_toggle

##### print line and execute it in BASH

   set  -x

##### Setting gdb in memory allocation debugging mode under MAC OS X

   set  env DYLD_INSERT_LIBRARIES = /usr/lib/libgmalloc.dylib;b szone_error

##### bash screensaver off

   set term -powersave off -blank 0
