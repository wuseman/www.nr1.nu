# strace

# Monitor opened files of a process in realtime

	strace -e trace=open,close,read,write,connect,accept your-command-here                                 
