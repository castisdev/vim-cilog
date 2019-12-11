#!/bin/bash -e
VIMDIR=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `/syntax
sudo cp cilog.vim $VIMDIR
mkdir -p ~/.vim/ftdetect
echo "au BufNewFile,BufRead *.log setf cilog" > ~/.vim/ftdetect/cilog.vim
