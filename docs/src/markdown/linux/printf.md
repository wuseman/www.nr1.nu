# printf

### Generate a sequence of numbers

printf '%s\n' {1..10}

### 
x="ABCD"
n=10
n=$((n + ${#x}))
printf "%${n}s" $x