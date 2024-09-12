
exec > /dev/null 2>&1

for f in $( /bin/ls -a ./.* ); do
	[[ -f $HOME/${f} && -w $HOME/${f} ]] && cp ${HOME}/${f} ./${f}.bkp;
	cp ${f} $HOME;
done

cd $HOME

[[ ! $( echo $0 | grep "bash" ) ]] && ENTRYPOINT=.bashrc || ENTRYPOINT=.profile

echo "cd $HOME; . ./.env" >> ./$ENTRYPOINT
