#!/bin/bash

dd if=/dev/zero of=/tmp/test1.img bs=1G count=1 oflag=dsync
dd if=/dev/zero of=/tmp/test2.img bs=64M count=1 oflag=dsync
dd if=/dev/zero of=/tmp/test3.img bs=1M count=256 oflag=dsync
dd if=/dev/zero of=/tmp/test4.img bs=8k count=10k oflag=dsync
dd if=/dev/zero of=/tmp/test5.img bs=512 count=1000 oflag=dsync
rm -rdf /tmp/test1.img
rm -rdf /tmp/test2.img
rm -rdf /tmp/test3.img
rm -rdf /tmp/test4.img
rm -rdf /tmp/test5.img