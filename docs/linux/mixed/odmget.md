# odmget

##### Get DMX disk ID from the ODM database of a DMX attached disk. It is ok for virtual disks.

   odmget  -q "attribute=unique_id" CuAt  |sed -n 's/.*name = "\(.*\)"/\1/p;s/.*value = "..........\(....\)..SYMMETRIX..EMCfcp.*"/0x\1/p;s/.*value =//p'
