#!/usr/bin/env bash
echo "Random number from 0 to 9, A to F"
num=$(( $RANDOM % 16 ))

if [ ${num} -lt 10 ] ; then
    hexchar=$num
else
   case ${num} in
     10)
       hexchar="A"
       ;;
     11)
       hexchar="B"
       ;;
     12)
       hexchar="C"
       ;;
     13)
       hexchar="D"
       ;;
     14)
       hexchar="E"
       ;;
     15)
       hexchar="F"
       ;;
     *)
       hexchar="A"
       echo "Something's Broken!"
       ;;
   esac
fi

echo ${hexchar}
