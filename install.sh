
exec > /dev/null 2>&1

DOTS=$HOME/dots
[[ -d $DOTS && -x $DOTS ]] && cd $DOTS || exit 1

DT=$(date +%Y%m%d%H%M%S)
BKP=$HOME/bkp/$DT

mkdir -p $BKP


for f in $( /bin/ls -a ./.* ); do
	[[ -f $HOME/${f} ]] && cp ${HOME}/${f} $BKP/${f}.bkp;
	cp ${f} $HOME;
done

cd $HOME

[[ ! $( echo $0 | grep "bash" ) ]] && ENTRYPOINT=.bashrc || ENTRYPOINT=.profile

echo "cd $HOME; . ./.env" >> ./$ENTRYPOINT

rm -rf $DOTS
