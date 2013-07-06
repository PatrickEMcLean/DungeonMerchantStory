#!/bin/bash

COUNTMESSAGE=`wc -w WorkingDraft.md`" "`date`
echo $COUNTMESSAGE >> wordcount.txt

echo "--------------------------------------------------------------------"
echo 
echo $* "    " `wc -w WorkingDraft.md`
echo
echo "--------------------------------------------------------------------"

git add . -A 
git commit -m "$* `wc -w WorkingDraft.md`"
git push 


COUNTMESSAGE=`wc -w WorkingDraft.md`" "`date`