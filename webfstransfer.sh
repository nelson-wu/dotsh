#!/bin/bash

wget -r -l inf -N --retry-connrefused -np --waitretry=1 --read-timeout=20 --timeout=15 -t 0 "$1" --restrict-file-names=nocontrol
