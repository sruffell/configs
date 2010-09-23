#!/usr/bin/env python

import sys

found = False
for line in sys.stdin:
    if -1 == line.find("Signed-off-by:"):
        sys.stdout.write(line)
    elif not found:
        found = True
        sys.stdout.write(line)
        sys.stdout.write(sys.argv[1] + "\n")
