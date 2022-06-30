# printf

### Generate a sequence of numbers
```sh
printf '%s\n' {1..10}
```

### Print in columns

```sh
x="ABCD"
n=10
n=$((n + ${#x}))
printf "%${n}s" $x
```