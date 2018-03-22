#!/usr/bin/python
import sys
import re
#
books = sys.stdin.readlines()
for book in books:
	X = re.split("<[^>]+>",book.strip())
	Y= filter(lambda x: len(x) > 0 and x != ",&nbsp;", map(lambda x: x.strip(), X))
	
	print Y[0:4]
