#!/usr/bin/env bash
# change Urls from Neilpang to kenael.
# needed for own Use in internal Network

FILE="$(grep 'https://github.com/Neilpang' * -lR | grep -v $0 )"

for i in $FILE;
do
  echo "Change URL's  in File :$i"
  sed -i 's#https://github.com/kenael#https://github.com/kenael#g' $i
done


 