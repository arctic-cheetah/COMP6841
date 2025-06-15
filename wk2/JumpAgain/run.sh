#!/bin/bash

apt-get install -y gcc-multilib || echo "gcc-multilib not available"

make || make apple

socat tcp-l:1337,reuseaddr,fork EXEC:"/challenge",pty,stderr
