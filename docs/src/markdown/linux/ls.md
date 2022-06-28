# ls

### Tree-like output in ls

	ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'


### Methhod12: Find all executable files

	ls -Fla | grep \*$ 

### Methhod 2: Find all executable 

	ls -la | grep -E ^-.{2}x

### Methhod 3: Find all executable third method

	ls -lsa | grep -E "[d\-](([rw\-]{2})x){1,3}"

### Methhod 4: Find all executable third method

	for f in $(\ls) ; do test -x $f && echo $f ; done

###  # Find all executable files and delete them

	ls -lp | grep -v / | awk 'match($0,"-**x*x*x",a);{print  a[1]}'| awk '{print $9}' | xargs rm -f                 

### List files and do it with custom output

	ls -ldh * | grep -v total  |awk '{ print "Size is " $5 " bytes for " $9 }'

### Print all config files only

	ls -l | awk '/\<(a|x).*\.conf$/ { print $9 }'

### This worked on Linux; column 8 is "n" (numeric), column 6 is "M", month.

	ls -nl | sort -k 8,8n -k 6,6M

### To list regular files only:

	ls -al | grep '^-'
	ls -al | grep '^[-l]'

### Method 1: Grep with color on column

	ls -l | GREP_COLORS='mt=1;41;37' grep --color -P '^\S+\s+\K\S+'

### Method 2: Grep with color on column

	ls --color -l | sed -e $'s/  *[^ ]* /\033[0;31m&\033[0m/'

### Method 3: Grep with color on column

	n=5;GREP_COLORS='mt=1;41;37' grep --color -P "^(\S+\s+){$(($n-1))}\K\S+"

### Method 4: Grep with color on column

	sed "s/[^[:blank:]]\{1,\}/$on&$off/$n"
