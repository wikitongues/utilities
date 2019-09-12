#!/bin/bash
# move thumbnail
# IFS=''
echo "" > ~/Desktop/raw_thumb_log.txt
IFS=$'\n'
for file in `ls -1`; do
  printf "Thumbnail name: $file \n" >> ~/Desktop/raw_thumb_log.txt
  # OH ID
  oh_id=`echo "$file" | rev | cut -d '.' -f 2 | rev`;

  temp_abs_dir=`echo -e /Volumes/Wikitongues/Dropbox\ \(Wikitongues\)/Teamwide/1_Oral_Histories/$oh_id`

  abs_dir_found=($(find $temp_abs_dir -type d -depth 0))

  abs_dir_thumb=`echo $abs_dir_found`

  if [[ $abs_dir_found ]]; then
    if [[ -f $abs_dir_found/$file ]]; then
      echo "    file exists" >> ~/Desktop/raw_thumb_log.txt
      # c=($(find $abs_dir_thumb/$oh_id))
      # echo $c >> ~/Desktop/raw_thumb_log.txt
      mv -nv $file _temp/$file
      echo "    moving existing file to temp"
    else
      echo "    file does not exist" >> ~/Desktop/raw_thumb_log.txt
      # mkdir -p $abs_dir_found/raws/thumbnail
      mv -nv $file $abs_dir_thumb/$file
      echo "    moving $file to $abs_dir_thumb/$file"  >> ~/Desktop/raw_thumb_log.txt
    fi
    # printf "  Moving file: \n    $file\n  to destination: \n    $abs_dir_thumb \n\n" >> ~/Desktop/raw_thumb_log.txt
  else
    printf "  Directory not found \n\n" >> ~/Desktop/raw_thumb_log.txt
  fi

done
subl ~/Desktop/raw_thumb_log.txt