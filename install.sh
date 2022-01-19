{

DIR=".cool/source/alhambra"

ALIAS='alias alhambra="source ~/.cool/source/alhambra/alhambra.sh"'
ALIAS_FIX='alias alhambra-fix="source ~/.cool/source/alhambra/alhambra-fix.sh"'

cd 

if [ ! -d ".cool/" ]; then
  mkdir -p "$DIR"
  echo "folder created"

else
echo "folder NOT created"
fi



cd $DIR && curl  -O  "https://raw.githubusercontent.com/niboko/alhambra/main/alhambra.sh" 
cd
cd $DIR && curl  -O  "https://raw.githubusercontent.com/niboko/alhambra/main/alhambra-fix.sh" 
echo "files downloaded"

cd

if ! grep -Fxq 'alias alhambra="source ~/.cool/source/alhambra/alhambra.sh"' ".zshrc" 
then
    echo $ALIAS >> .zshrc
else
	echo "ALIAS ALHAMBRA EXISTS"
fi

if ! grep -Fxq 'alias alhambra-fix="source ~/.cool/source/alhambra/alhambra-fix.sh"' ".zshrc" 
then
    echo $ALIAS_FIX >> .zshrc
else
	echo "ALIAS ALHAMBRA_FIX EXISTS"
fi


echo ""

echo "alhambra installed, please restart your terminal."
echo "now you can use 'alhambra' to update your system and 'alhambra-fix' to have a higher likelyhood of avoiding issues..."


}
