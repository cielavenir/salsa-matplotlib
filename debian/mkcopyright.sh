#!/bin/sh

CURDIR="`dirname $0`"

echo "This package was debianized by Vittorio Palmisano <redclay81@gmail.com> on" > "$CURDIR"/copyright
	echo -e "`date -R`\n" >> "$CURDIR"/copyright
	echo -e  "It was downloaded from http://matplotlib.sourceforge.net/\n" >> "$CURDIR"/copyright
	echo -e  "Upstream Author: John D. Hunter  <jdhunter@ace.bsd.uchicago.edu>\n" >> "$CURDIR"/copyright
	echo -e  "Copyright:\n" >> "$CURDIR"/copyright

	for i in `ls "$CURDIR"/../license`; do
		echo "********************************************************************************" >> "$CURDIR"/copyright;
		echo "$i" >> "$CURDIR"/copyright;
		cat "$CURDIR"/../license/"$i" >> "$CURDIR"/copyright;
		echo -e "\n" >> "$CURDIR"/copyright;
	done

