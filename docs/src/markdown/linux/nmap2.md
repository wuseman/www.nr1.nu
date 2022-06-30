# nmap2

Personal cheatsheet 

### Nmap scan every interface that is assigned an IP
```sh
ifconfig -a | grep -Po '\b(?!255)(?:\d{1,3}\.){3}(?!255)\d{1,3}\b' | xargs nmap -A -p0-
```