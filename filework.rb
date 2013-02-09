#!/usr/bin/ruby


wordcount=`wc 01-Draft.md`
wordcount=wordcount.split(" ")
exec "git add -A"
exec "git commit -m #{"words in draft= " + wordcount[1]}"
exec "git push origin master"

# ===========================================================
# Warning, don't change the last line to something like this

# 'git push origin master -u username -p password'

# It will push your username and password to the repo. 


# Use git config credential.helper store instead
# http://kernel.org/pub/software/scm/git/docs/git-credential-store.html
# ===========================================================
