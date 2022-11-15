#!/bin/bash

echo "Hi! 😀"

firstline=$(head -n 1 source/changelog.md)

read -a stringfirstline <<< $firstline

version=${stringfirstline[1]}

echo "Version is" $version

echo "Do you want to continue? press 1 for yes and 0 for no"

read versioncontinue

if [ $versioncontinue -eq 1 ]
then
  for file in source/*
    do
      if [ $file == "source/secretinfo.md" ]
        then
            echo $file "not being copied"
        else
            echo $file "is being copied"
            cp $file build/
      fi
    done
else
  echo "Pleae come back when you are ready"
fi



