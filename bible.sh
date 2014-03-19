#!/bin/bash

# Usage: ./bible.sh passage [version]
#   Passage should be <book>_<chapter>:<verse>. 
#   Verses can be omitted or a range can be specified.
#   A range of chapters can be specified.
#   Multiple passages can be looked up by separating them with a ;
#   Example: Jer_29:11;John_3:16-17;Ps_23 

version="NIV"
if [ -n "$2" ]
then
  version=$2
fi

curl "http://www.biblegateway.com/passage/?version=$version&search=$1" 2> /dev/null \
  | html2text -style pretty 2>/dev/null \
  | awk '/* <</ {ok=0} {if(ok) {print}} /Add_parallel/ {ok=1}'
