#!/bin/bash -e
VIMDIR=`vim -e -T dumb --cmd 'exe "set t_cm=\<C-M>"|echo $VIMRUNTIME|quit' | tr -d '\015' `
if [ -z "$VIMDIR" ]
then
    echo "failed to get vim directory"
    exit 1
fi
VIMDIR=$VIMDIR/syntax
echo "install to " $VIMDIR

sudo cp cilog.vim $VIMDIR
mkdir -p ~/.vim/ftdetect
echo "au BufNewFile,BufRead *.log setf cilog" > ~/.vim/ftdetect/cilog.vim
