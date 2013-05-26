#!/bin/sh


git add . -A 
git commit -m "`wc -w WorkingDraft.md`"
git push 