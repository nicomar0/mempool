#!/bin/bash

#bender -d /scratch/sem23h18/project/mempool/hardware/deps/snitch script vsim -t rocache_test -p snitch --vlog-arg="-svinputport=compat" > compile.tcl

bender -d /scratch/sem23h18/project/mempool script vsim -t rocache_test -p snitch --vlog-arg="-svinputport=compat" > compile.tcl
