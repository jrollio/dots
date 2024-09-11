for f in $( /bin/ls -a ./.* ); do [[ -f $HOME/${f} && -w $HOME/${f} ]] && cp ${HOME}/${f} ./${f}.bkp; done;

cd $HOME

[[ ! $( echo $0 | grep "bash" ) ]] && ENTRYPOINT=.bashrc || ENTRYPOINT=.profile

echo "cd $HOME; . ./.env" >> ./$ENTRYPOINT

for f in $( /bin/ls -a ./dots/.*); do [[ -f $f} ]] && cp ${f} ./; done;
