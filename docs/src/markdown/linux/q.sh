#!/bin/bash
file="/Users/USER12/Desktop/url-list.txt"
log="/Users/USER12/Desktop/url-results.txt"
fmt="%-25s%-12s%-12s\n"
printf "$fmt" DOMAIN_NAME HTTP_CODE RESPONSE_TIME > "$log"
while read line
do
    read code time < <(curl -o /dev/null --silent --head --write-out '%{http_code} %{time_total}' "$line")
    printf "$fmt" "$line" "$code" "$time" >> "$log"
done <"$file"
