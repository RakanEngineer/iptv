# /bin/sh

files=( "channels/ae.m3u" "channels/kw.m3u" "channels/ps.m3u" "channels/bh.m3u" "channels/eg.m3u" "channels/iq.m3u" "channels/jo.m3u" "channels/lb.m3u" "channels/qa.m3u" "channels/sa.m3u" "channels/sy.m3u" "channels/tr.m3u" )
current=`PWD`
index_file="index.country.m3u"
rm "$current/$index_file" 2> /dev/null 

for i in "${files[@]}"
do
	echo "$current/$i"
	sed 1'd' "$current/$i" >> "$current/$index_file"
done
