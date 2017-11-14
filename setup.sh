#!/bin/bash

DESTPATH=~

#install oh-my-zsh maybe?
if [ ! -d "$DESTPATH/.oh-my-zsh" ]; then
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

#copy the stuff
cp -rvi files/. $DESTPATH

#download vim plugins
if [ ! -d "$DESTPATH/.vim/bundle" ]; then
	mkdir $DESTPATH/.vim/bundle
fi
cd $DESTPATH/.vim/bundle
if [ ! -d "$DESTPATH/.vim/bundle/vim-sensible" ]; then 
	git clone https://github.com/tpope/vim-sensible 
fi
if [ ! -d "$DESTPATH/.vim/bundle/nerdtree" ]; then 
	git clone https://github.com/scrooloose/nerdtree
fi
if [ ! -d "$DESTPATH/.vim/bundle/vim-javascript" ]; then 
	git clone https://github.com/pangloss/vim-javascript
fi
if [ ! -d "$DESTPATH/.vim/bundle/vim-airline" ]; then 
	git clone https://github.com/bling/vim-airline
fi
if [ ! -d "$DESTPATH/.vim/bundle/vim-markdown" ]; then 
	git clone https://github.com/plasticboy/vim-markdown
fi

cd -

echo "\nAll done. More vimplugins at http://vimawesome.com.\n"

