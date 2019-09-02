for i in *
  do
  new=$(echo "$i" | sed 's/_\(.*\)_\([0-9]\)/_\([0-9]\)/')
  mv "$i" "$new"
done