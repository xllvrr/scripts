#!/bin/sh

esc=""
boldon="${esc}[1m";
boldoff="${esc}[22m"
redf="${esc}[31m";
bluef="${esc}[34m";
reset="${esc}[0m"

i=0
while read line
do
  line=${line##*/}
  array[ $i ]=${line%.png}
  (( i++ ))
done < <(ls png20/*.png)

for i in ${array[@]};
do
  echo "${boldon}${redf}convert${boldoff} ${bluef}transparent-40x40.png png20/$i.png -gravity center -compose over -composite png40/$i.png${reset}"
  convert transparent-40x40.png png20/$i.png -gravity center -compose over -composite png40/$i.png
done
