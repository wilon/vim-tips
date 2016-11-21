
# vim-tips
Random output vim tips.

### Install

1. Set up [Vundle]:

    `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Configure Plugins: add this to your `.vimrc` Vundle config.

    `Plugin 'wilon/vim-tips'`

3. Install:

    Launch `vim` and run `:PluginInstall`

    To install from command line: `vim +PluginInstall +qall`

### Configuring

1. Supported tips
    `let g:vim_tip_lang = 'wilon'`    [My] vim tips;
    `let g:vim_tip_lang = 'zzapper'`    [Xzapper] vim tips;
    `let g:vim_tip_lang = 'learnenglish'`    English-cn vim tips;

2. Customize the file
    `let g:vim_tip_file = '/home/lilei/pp.txt'`    Remote is not supported


[Vundle]:http://github.com/gmarik/Vundle.vim
[My]:https://github.com/wilon/
[Xzapper]:https://github.com/gmarik/Vundle.vim/wiki/Vundle-for-Windows
