#!/bin/sh

pdftotext $1 $1.txt

cat $1.txt | tr ' ' '\n' | tr -d [0-9] | tr -d [.\:,\/\"\!\#\<\_\>] | grep -v 'http\|HTTP' | sort | uniq > $1-vocab.txt

rm $1.txt
