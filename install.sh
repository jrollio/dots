for f in *; do [[ -w $HOME/${f} ]] && cp -R ${HOME}/${f} ./${f}.bkp

cd $HOME

[[ ! $( echo $0 == "-bash" ) ]] && ENTRYPOINT=.bashrc || ENTRYPOINT=.profile

echo "cd $HOME; . ./.env" >> ./$ENTRYPOINT

for f in dots/.*; do cp -R ${f} .; done
