# ioreg

##### See if your mac can run 64-bit && if it the kernel is loaded 64-bit

   ioreg  -l -p IODeviceTree | grep -o EFI[0-9].  && system_profiler SPSoftwareDataType |grep 64

##### Show display type

   ioreg  -lw0 | grep IODisplayEDID | sed "/[^<]*</s///" | xxd -p -r | strings -6

##### CPU Display model type and MPN

   ioreg  -lw0 | grep IODisplayEDID | sed "/[^<]*</s///" | xxd -p -r | strings -6

##### The cycle count information is displayed among the other known battery information.

   ioreg  -l | grep Capacity

##### CPU Display model type and MPN

   ioreg  -lw0 | grep IODisplayEDID | sed "/[^<]*</s///" | xxd -p -r | strings -6

##### The cycle count information is displayed among the other known battery information.

   ioreg  -l | grep Capacity
