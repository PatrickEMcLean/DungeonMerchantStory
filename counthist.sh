while :
	do
	 count=$(wc -w < WorkingDraft.md)	
	 $(echo $count | histo)
	sleep 10
	done
