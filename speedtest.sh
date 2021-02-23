disk=$1

# simply write values reported by disk to log
log "$( hdparm -tT --direct $disk )"

# real disk speed test ( will execute test in work dir on disk )
#log "$( fio --name=test \
#		--rw=randrw --size=200M --runtime=60 \
#		--direct=1 --ioengine=libaio --gtod_reduce=1 --iodepth=64 |
#	grep "Run status group" -A2 )"
