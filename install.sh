{

DIR=".cool/source/alhambra"

ALIAS='alias alhambra="source ~/.cool/source/alhambra/alhambra.sh"'

cd 

if [ ! -d ".cool/" ]; then
  mkdir -p "$DIR"
  echo "folder created"

else
echo "folder NOT created"
fi



cd $DIR && curl  -O  "https://raw.githubusercontent.com/niboko/alhambra/main/alhambra.sh" 
echo "file downloaded"

cd

echo $ALIAS >> .zshrc
echo ""

echo "alhambra installed, please restart your terminal."
echo "now you can use 'alhambra' to update your system"


}
