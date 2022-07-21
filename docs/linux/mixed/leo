# leo

##### foo <> german translation with dict.leo.org

   leo  (){ l="en"; if [ "${1:0:1}" = "-" ]; then l=${1:1:2};shift;fi;Q="$*";curl -s "https://dict.leo.org/${l}de/?search=${Q// /%20}" | html2text | sed -e '0,/H.ufigste .*/d;/Weitere Aktionen/,$d;/f.r Sie .*:/,$d' | grep -aEA900 '^\*{5} .*$'; }

##### foo <> german translation with dict.leo.org

   leo  (){ l="en"; if [ "${1:0:1}" = "-" ]; then l=${1:1:2};shift;fi;Q="$*";curl -s "https://dict.leo.org/${l}de/?search=${Q// /%20}" | html2text | sed -e '0,/H.ufigste .*/d;/Weitere Aktionen/,$d;/f.r Sie .*:/,$d' | grep -aEA900 '^\*{5} .*$'; }
