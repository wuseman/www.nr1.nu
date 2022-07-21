# byobu

##### byobu use

   byobu 

##### Start byobu (tmux) with pre-defined windows

   byobu  new-session -d -s name; byobu new-window -t name:1 -n 'window-1-title' 'command-1'; byobu new-window -t name:2 -n 'window-2-title' 'command-2'; byobu select-window -t name:1; byobu -2 attach-session -t name
