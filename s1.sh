rm -rf epg.xml.xz
rm -rf epg.xml
wget "https://ext.greektv.app/epg/epg.xml"
echo "<!--time=` TZ='Europe/Athens' date ` -->" >> epg.xml
xz -v epg.xml

