rm -rf epg.xml.xz
rm -rf epg.xml
rm -rf epg1.xml
wget "https://ext.greektv.app/epg/epg.xml"
tv_sort --by-channel --duplicate-error --output new.xml epg.xml
echo "<!-- time=` TZ='Europe/Athens' date ` -->" >> new.xml
mv new.xml epg.xml
cp epg.xml epg1.xml
xz -v epg.xml

