# sensors

##### Be notified about overheating of your CPU and/or motherboard

   sensors  | grep "Core 1" | [[ `sed -e 's/^.*+\([0-9]\{2,3\}\).*(.*/\1/'` -gt 50 ]] && notify-send "Core 1 temperature exceeds 50 degrees"

##### Be notified about overheating of your CPU and/or motherboard

   sensors  | grep "Core 1" | [[ `sed -e 's/^.*+\([0-9]\{2,3\}\).*(.*/\1/'` -gt 50 ]] && notify-send "Core 1 temperature exceeds 50 degrees"
