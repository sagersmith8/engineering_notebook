JOURNAL_DIR=${HOME}/.jrnl

init_journal() {
	if grep -Fxq "source ${JOURNAL_DIR}/journal.sh" ${HOME}/.profile
	then
		echo "Journal already initialized"
	else
        	mkdir $JOURNAL_DIR
        	cp ${PWD}/journal.sh ${JOURNAL_DIR}/journal.sh
        	pushd $JOURNAL_DIR
        	git init
        	git add .
        	git commit -m "Add journal.sh"
        	git checkout master
        	echo "source ${JOURNAL_DIR}/journal.sh" >> ${HOME}/.profile
        	popd
        	source ${HOME}/.profile
	fi	
}

journal() {
	pushd $JOURNAL_DIR
	git commit --allow-empty -m "$1"	
	popd
}

standup() {
	pushd $JOURNAL_DIR
	git lg | grep "$(date +'%a %b %-d')"
	git lg | grep "$(date -v -1d +'%a %b %-d')"
	popd	
}
