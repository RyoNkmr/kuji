#!/bin/sh

if [ $# = 0 ]; then
  echo "nothing happened with no kuji"
  exit 1
fi

A=( "$@" )
R=$(($(od -vAn -N4 -tu4 < /dev/random) % $#))
echo ${A[$R]}
