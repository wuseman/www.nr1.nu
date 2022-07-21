# gem

##### sort of automaticly install gems that are depend

   gem  install `ruby ./isuckat_ruby.rb 2>&1 | sed -e 's/.*find gem .//g' -e 's/ .*//g' | head -n 1`

##### Install Ruby dependencies from a Gemfile without Bundler

   gem  install -g

##### Uninstall all gems

   gem  list | cut -d" " -f1 | grep invert-match "test-unit\|psych\|io-console\|rdoc\|json\|bigdecimal\|rake\|minitest" | xargs gem uninstall -aIx

##### Enumerate rubygems environment

   gem  env

##### configify the list of gems on ur machine. the quick hack

   gem  list local | python -c "import sys;import re;l=sys.stdin.readlines();x=['config.gem :'+line[:-1][:line.index(' ')] + ' , ' +line[:-1][line.index(' '):].replace('(',':version => ').replace(')','') for line in l];print '\n'.join(x)"

##### configify the list of gems on ur machine. the quick hack

   gem  list local | python -c "import sys;import re;l=sys.stdin.readlines();x=['config.gem \"'+line[:-1][:line.index(' ')] + '\" , ' +line[:-1][line.index(' '):].replace('(',':version => \"').replace(')','')+'\"' for line in l];print '\n'.join(x)"

##### Enumerate rubygems environment

   gem  env

##### configify the list of gems on ur machine. the quick hack

   gem  list local | python -c "import sys;import re;l=sys.stdin.readlines();x=['config.gem :'+line[:-1][:line.index(' ')] + ' , ' +line[:-1][line.index(' '):].replace('(',':version => ').replace(')','') for line in l];print '\n'.join(x)"

##### configify the list of gems on ur machine. the quick hack

   gem  list local | python -c "import sys;import re;l=sys.stdin.readlines();x=['config.gem \"'+line[:-1][:line.index(' ')] + '\" , ' +line[:-1][line.index(' '):].replace('(',':version => \"').replace(')','')+'\"' for line in l];print '\n'.join(x)"
