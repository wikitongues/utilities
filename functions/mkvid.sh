#!/bin/bash
#version 3.0

video () {
  videos=()
  open=false
  if [ -z "$1" ]; then
    echo "Please specify at least once video ID"
    exit 1
  else
    for arg in $@; do
      if ! [[ "$arg" == "-o" ||  "$arg" == "--open" ]]; then
        directorator "$arg"
        videos+=("$arg")
      else
        open=true
      fi
    done
    if [[ $open == true ]]; then
      for i in "${videos[*]}"; do
        open $i
      done
    fi
  fi
}

directorator () {
  if [ -d "$1" ]; then
    echo "A directory named '$1' already exists in this location."
  else
    for i in thumbnail Premier\ Project; do
      mkdir -p "$1"/raws/"$i"
    done
    for j in clips converted audio captions; do
      mkdir -p "$1"/raws/footage/"$j"
    done
    echo "Oral History Directory Successfully Created For '$1'"
  fi
}

video $@

