#!/bin/bash

format_list=(jpg png gif)

for format in "${format_list[@]}"; do
  pushd $format
  num=1
  for old in *; do
    new=$(printf "%05d.$format" "$num")
    mv -i -- "$old" "$new"
    let num=num+1
  done
  popd
done
