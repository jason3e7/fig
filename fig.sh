
output="index.md"
TODAY=$(date +"%Y%m%d")
tags="\#temp."
to="\#to:temp."

echo "### config ###"
echo "filename:$output"
echo "mtime:$TODAY"
echo "tags:$tags"
echo "to:$to"

read -p "Press any key to continue ..."

if test -f "$output"; then
  echo "### $output exist ###"
  exit
fi

echo "# $TODAY #"> $output

darr=()
while IFS=  read -r -d $'\0'; do
  if [[ $REPLY == "." ]]; then
    continue
  fi
  darr+=("$REPLY")
done < <(find . -maxdepth 1 -type d -print0)

for each in "${darr[@]}"
do
  dirname=${each#"./"}
  echo "* \#rating:80, \#type:pdir, \#mtime:$TODAY. [$dirname]($dirname)">> $output
  echo "  * $tags">> $output
  echo "  * $to">> $output
done

farr=()
while IFS=  read -r -d $'\0'; do
  farr+=("$REPLY")
done < <(find . -maxdepth 1 -type f -print0)

for each in "${farr[@]}"
do
  fullname=${each#"./"}
  filename=""
  if [[ ${fullname:0:1} == "." ]]; then
    filename=$fullname
  else
    filename="${fullname%%.*}"
  fi
  echo "* \#rating:80, \#type:file, \#mtime:$TODAY. [$filename]($fullname)">> $output
  echo "  * $tags">> $output
  echo "  * $to">> $output
done

echo "### fig finish ###"