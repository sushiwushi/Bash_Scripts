#!/bin/bash
echo "---------------"
cat domains
echo "---------------"
echo ""

for i in $(cat domains); do
        echo site:$i inurl:url
        echo site:$i inurl:page
        echo 'site:'$i' "redirect url"'
        echo 'site:'$i' "to site"'
        echo ""
done

for i in $(cat domains); do
	echo site:$i inurl:url >> payload
	echo site:$i inurl:page >> payload
	echo 'site:'$i' "redirect url"' >> payload
	echo 'site:'$i' "to site"' >> payload
done

echo "---------------"
echo Payloads
echo "---------------"
cat payload
echo ""

read -p "Start getting URL? (y/n)" -n 1 -r
if [[ $REPLY =~ ^[Yy]$ ]]
then
	python dorknet.py -l payload --verbose
fi
