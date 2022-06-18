# awk

### AWK/Nawk/Gawk

```
AWK - the (very old) *original* from `AT&T`
NAWK - A newer, improved version from `AT&T`
GAWK - The Free Software foundation's version
```

### Add a blank line after every 5th line

```sh
seq 10|awk '{ print; } NR % 5 == 0 { print ""; }'
1
2
3
4
5

6
7
8
9
10
```

### Insert a empty line after every 3 words

```sh
awk 'BEGIN{ORS="\n\n\n"};1'
```

### Uppercasing First Letter of Words Using AWK

```sh
echo wuseman|awk '{for(i=1;i<=NF;i++){ $i=toupper(substr($i,1,1)) substr($i,2) }}1'
```

### Make a jump after every second string

```sh
awk '{ cur = substr($0,1,1) } NR > 1 && cur != prev { print "" } { prev = cur; print }
```

## Live editor:

https://awk.js.org/

## Good Resources

https://www.grymoire.com/Unix/Awk.html
https://www.gnu.org/software/gawk/manual/gawk.html
https://backreference.org/2014/01/22/pulling-out-strings/index.html
https://learnbyexample.github.io/learn_gnuawk/record-separators.html