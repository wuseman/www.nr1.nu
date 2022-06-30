# strace

### Monitor opened files of a process in realtime
```sh
strace -e trace=open,close,read,write,connect,accept your-command-here                                 
```
