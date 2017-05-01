#!/usr/bin/env bash
bit=$(( $RANDOM % 2 ))
byte=${bit}
for i in {1..7}
do
  bit=$(( $RANDOM % 2 ))
  byte="${byte}${bit}"
done
echo "${byte}"

