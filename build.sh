declare -a pcis=("brainstorm" "ganttchart" "svgmap" "voxelcraft" "theroom" "textgapmatch" "wordrank")

for i in  "${pcis[@]}"; do
  if [ -d "$i" ] && [ "$i" != "builds" ]; then
    echo "$i"
    cd $i
    zip -r "../builds/$i.zip" .
    cd ..
  fi
done
zip --delete ./builds/theroom.zip "exercises/*"
