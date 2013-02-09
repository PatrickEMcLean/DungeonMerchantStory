#!/usr/bin/env ruby

`bash /build/build.sh`
wordcount=`wc 01-Draft.md`
wordcount=wordcount.split(" ")
system("git add -A")
system("git commit -m \"words in draft= \ #{wordcount[1]}\"")
system("git push origin master")

# ===========================================================
#
#
# Warning, don't change the last line to something like this

# 'git push origin master -u username -p password'

# It will push your username and password to the repo. 


# Use git config credential.helper store instead
# http://kernel.org/pub/software/scm/git/docs/git-credential-store.html
# ===========================================================
