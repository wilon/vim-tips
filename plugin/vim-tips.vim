" =============================================================================
" File:          plugin/vim-tips.vim
" Description:   Random output vim tips.
" Author:        Weilong Wang <github.com/wilon>
" =============================================================================

" file
if !exists('g:vim_tip_file')
    if !exists('g:vim_tip_lang')
        let g:vim_tip_lang = 'wilon'
    en
    let g:vim_tip_file = '~/.vim/bundle/vim-tips/tips/vim_tips_' . g:vim_tip_lang . '.txt'
en

" frequency
if !exists('g:vim_tip_frequency')
    let g:vim_tip_frequency = 0.5
en

" cursor moved echo tip
if !exists('g:vim_tip_cursormoved') || g:vim_tip_cursormoved != 0
    au CursorMoved * call vimtips#echo()
en

" command
command! -bar Vimtips cal vimtips#echo()
