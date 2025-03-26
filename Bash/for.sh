#!/bin/bash

for x in google.com bing.com facebook.com youtube.com
do
  if ping -q -c 2 -W 1 $x > /dev/null; then
    echo "$x is up"
  else
    echo "$x is down"
  fi
done

for x in $(cat cities.txt);
do
  weather=$(curl -s http://wttr.in/$x?format=3)
  echo "The weather for $weather"
done
