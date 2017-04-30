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

num2=$(( $RANDOM % 16 ))
if [ ${num2} -lt 10 ] ; then
    hexchar2=$num2
else
   case ${num2} in
     10)
       hexchar2="A"
       ;;
     11)
       hexchar2="B"
       ;;
     12)
       hexchar2="C"
       ;;
     13)
       hexchar2="D"
       ;;
     14)
       hexchar2="E"
       ;;
     15)
       hexchar2="F"
       ;;
     *)
       hexchar2="A"
       echo "Something's Broken!"
       ;;
   esac
fi
hex="${hexchar}${hexchar2}"
echo ${hex}

