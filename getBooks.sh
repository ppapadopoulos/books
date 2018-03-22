#!/bin/bash
for book in $(cat $1) ; do
	echo "ISBN: $book" 1>&2 
	wget -O - http://www.lookupbyisbn.com/Search/Book/$book/1 2>&1 | awk -f proc.ak 
done
