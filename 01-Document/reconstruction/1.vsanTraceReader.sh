#!/bin/sh
         [ -e "usr/lib/vmware/vsan/bin/1.vsanTraceReader" ] && exit
         ls "usr/lib/vmware/vsan/bin/1.vsanTraceReader.FRAG-"* | sed 's/\(.*\)\(FRAG-\)\(.*\)/\3\ \1\2\3/' | sort -n | while read -r num file; do cat "$file"; done > "usr/lib/vmware/vsan/bin/1.vsanTraceReader"
         rm -f "usr/lib/vmware/vsan/bin/1.vsanTraceReader.FRAG-"*


