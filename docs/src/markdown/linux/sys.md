# sys

### Print IOMMMU devices

```sh
for d in /sys/kernel/iommu_groups/*/devices/*; do 
	n=${d#*/iommu_groups/*}; n=${n%%/*}; 
	printf 'IOMMU Group %s ' "$n"; 
	lspci -nns "${d##*/}"; 
done;
ls -l /dev/input/by-id/*-event-{k,m}*
```