# ripgrep

### Set colors for matching in .bashrc

alias rg="rg --colors 'match:none' \
    --colors 'match:bg:0x33,0x66,0xFF' \
    --colors 'match:fg:white' \
    --colors 'match:style:bold'"


### List matching files only

rg -l clap	

### Files Without a Match

rg --files-without-match '\b(var|let|const)\b'

### Use -v to filter out all matches so that only non-matches are left.

rg 'bar' | rg -v 'foobar'


### Displays built-in available types and their corresponding globs

    rg --type-list	

### Only search in .sh files, -g can be used mulitple tiomes

 rg -g '*.shj' clap	

### Serach in all files excempt .sh files, -g can be used mulitple tiomes

 rg -g '!*.sh' clap	


### The following command restricts the search for the pattern key to json files only.

rg key -t json
