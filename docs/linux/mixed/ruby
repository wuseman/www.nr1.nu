# ruby

##### ruby one-liner to get the current week number

   ruby  -e 'require "date"; puts DateTime.now.cweek'

##### Print RPM dependencies

   ruby  -e 'puts `rpmdep glibc`.split(",")[2..-1]'

##### Ruby - nslookup against a list of IP`s or FQDN`s

   ruby  -e 'File.foreach("list") {|i| print `nslookup #{i}`}'

##### Search and replace text in all php files with ruby

   ruby  -i.bkp -pe "gsub(/search/, 'replace')" *.php

##### Random numbers with Ruby

   ruby  -e "puts (1..20).map {rand(10 ** 10).to_s.rjust(10,'0')}"

##### Generate random valid mac addresses

   ruby  -e 'puts (1..6).map{"%0.2X"%rand(256)}.join(":")'

##### ruby one-liner to get the current week number

   ruby  -rdate -e 'p DateTime.now.cweek'

##### Display command lines visible on commandlinefu.com homepage

   ruby  -ropen-uri -e 'require "hpricot";(Hpricot(open("http://commandlinefu.com"))/".command").each{|c| puts c.to_plain_text}'

##### Mirror rubygems.org

   ruby  -rrubygems/commands/mirror_command -S gem mirror

##### Display a Lissajous curve in text

   ruby  -rcurses -e"include Curses;i=0;loop{setpos 12*(Math.sin(i)+1),40*(Math.cos(i*0.2)+1);addstr'.';i+=0.01;refresh}"

##### Capitalize first letter of each word in a string - A ruby alternative

   ruby  -ne 'puts $_.split.collect(&:capitalize).join(" ")' <<< "pleAse cOuld YOu capiTalizE Me"

##### A one-line web server in Ruby

   ruby  -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start'

##### Extract domain from URl

   ruby  -ruri -e 'u=URI(ARGV[0]).host.split("."); puts u[(u[-2] =~ /^com?$/ ? -3 : -2)..-1].join(".")' http://test.example.com

##### Print a row of 50 hyphens

   ruby  -e 'puts "-" * 50'

##### Compile a latex doc to generate index

   ruby  -e " 3.times { system 'pdflatex mydoc.tex' } "

##### Convert JSON to YAML

   ruby  -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read))' < file.json > file.yaml

##### ruby emulation of "xxd -r" (reverse hexdump)

   ruby  -ne 'print [$_.split(/ /)[1..8].take_while{|x| not x.empty?}.join].pack("H*")'

##### Convert YAML to JSON

   ruby  -ryaml -rjson -e 'puts JSON.pretty_generate(YAML.load(ARGF))' < file.yml > file.json

##### See ruby compilation flags

   ruby  -r rbconfig -e 'puts RbConfig::CONFIG["configure_args"]'

##### Display a wave pattern

   ruby  -e "i=0;loop{puts ' '*(29*(Math.sin(i)/2+1))+'|'*(29*(Math.cos(i)/2+1)); i+=0.1}"

##### Serve current directory tree at http://$HOSTNAME:8000/

   ruby  -run -e httpd . -p 8000

##### Search and replace text in all php files with ruby

   ruby  -i.bkp -pe "gsub(/search/, 'replace')" *.php

##### Random numbers with Ruby

   ruby  -e "puts (1..20).map {rand(10 ** 10).to_s.rjust(10,'0')}"

##### Generate random valid mac addresses

   ruby  -e 'puts (1..6).map{"%0.2X"%rand(256)}.join(":")'

##### ruby one-liner to get the current week number

   ruby  -rdate -e 'p DateTime.now.cweek'

##### Display command lines visible on commandlinefu.com homepage

   ruby  -ropen-uri -e 'require "hpricot";(Hpricot(open("http://commandlinefu.com"))/".command").each{|c| puts c.to_plain_text}'

##### Mirror rubygems.org

   ruby  -rrubygems/commands/mirror_command -S gem mirror

##### Display a Lissajous curve in text

   ruby  -rcurses -e"include Curses;i=0;loop{setpos 12*(Math.sin(i)+1),40*(Math.cos(i*0.2)+1);addstr'.';i+=0.01;refresh}"

##### Capitalize first letter of each word in a string - A ruby alternative

   ruby  -ne 'puts $_.split.collect(&:capitalize).join(" ")' <<< "pleAse cOuld YOu capiTalizE Me"

##### A one-line web server in Ruby

   ruby  -rwebrick -e'WEBrick::HTTPServer.new(:Port => 3000, :DocumentRoot => Dir.pwd).start'

##### Extract domain from URl

   ruby  -ruri -e 'u=URI(ARGV[0]).host.split("."); puts u[(u[-2] =~ /^com?$/ ? -3 : -2)..-1].join(".")' http://test.example.com

##### Print a row of 50 hyphens

   ruby  -e 'puts "-" * 50'

##### Compile a latex doc to generate index

   ruby  -e " 3.times { system 'pdflatex mydoc.tex' } "

##### Convert JSON to YAML

   ruby  -ryaml -rjson -e 'puts YAML.dump(JSON.parse(STDIN.read))' < file.json > file.yaml

##### ruby emulation of "xxd -r" (reverse hexdump)

   ruby  -ne 'print [$_.split(/ /)[1..8].take_while{|x| not x.empty?}.join].pack("H*")'

##### Convert YAML to JSON

   ruby  -ryaml -rjson -e 'puts JSON.pretty_generate(YAML.load(ARGF))' < file.yml > file.json

##### See ruby compilation flags

   ruby  -r rbconfig -e 'puts RbConfig::CONFIG["configure_args"]'

##### Display a wave pattern

   ruby  -e "i=0;loop{puts ' '*(29*(Math.sin(i)/2+1))+'|'*(29*(Math.cos(i)/2+1)); i+=0.1}"
