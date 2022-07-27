# vim

### Merge every string after hash above everything to the left, see preview for explanation

```vim
%s/\(.*[^ ]\+\) *\(# .*\)/\2\r\1/"
```

### Remove all comments (shell syntax)

```vim
g/^\s*#/d
```
