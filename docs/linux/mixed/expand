# expand

##### Expand shell variables in sed scripts

   expand ed_script=$(eval "echo \"$(cat ${sed_script_file})\"") && sed -e "${expanded_script}" your_input_file

##### Convert all tabs in a file to spaces, assuming the tab width is 2

   expand  -t 2 <filename>

##### Expand shortened URLs

   expand url() { curl -sIL $1 | grep ^Location; }

##### Expand shortened URLs

   expand url() { curl -s "http://api.longurl.org/v2/expand?url=${1}&format=php" | awk -F '"' '{print $4}' }

##### Expand shortened URLs

   expand url() { wget -S $1 2>&1 | grep ^Location; }

##### Expand shortened URLs

   expand url() { curl -sIL $1 2>&1 | awk '/^Location/ {print $2}' | tail -n1; }

##### Expand shortened URLs

   expand url() { curl -sIL $1 | grep ^Location; }

##### Expand shortened URLs

   expand url() { curl -s "http://api.longurl.org/v2/expand?url=${1}&format=php" | awk -F '"' '{print $4}' }

##### Expand shortened URLs

   expand url() { wget -S $1 2>&1 | grep ^Location; }

##### Expand shortened URLs

   expand url() { curl -sIL $1 2>&1 | awk '/^Location/ {print $2}' | tail -n1; }
