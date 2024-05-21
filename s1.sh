rm -rf epg.xml.xz
wget "https://ext.greektv.app/epg/epg.xml"
echo "<!--time=` TZ='Europe/Athens' date ` -->" >> epg.xml
xz -v epg.xml
rm -rf epg.xml
