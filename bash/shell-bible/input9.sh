#!/bin/bash
while [ -n "$1" ] 
do
    case "$1" in 
    -a) echo "Found the -a options" ;;
    -b) echo "Found the -b options" ;;
    -c) echo "Foudn the -c options" ;;
    --) shift
        break ;;
    *)  echo "$1 is not an option" ;;
    esac
    shift
done
