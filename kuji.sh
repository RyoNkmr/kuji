#!/bin/sh

R=$(($(od -vAn -N4 -tu4 < /dev/random) % $# + 1))
echo $* | tr ' ' '\n' | awk "NR==$R"
