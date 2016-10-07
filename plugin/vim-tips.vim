" =============================================================================
" File:          plugin/vim-tips.vim
" Description:   Random output vim tips.
" Author:        Weilong Wang <github.com/wilon>
" =============================================================================

" file
if !exists('g:vim_tip_file')
    let g:vim_tip_file = fnamemodify('~/.vim/bundle/vim-tips/doc/vim_tips.txt', ':p')
en
" frequency
if !exists('g:vim_tip_frequency')
    let g:vim_tip_frequency = 0.5
en
" CursorMoved
if !exists('g:vim_tip_cursormoved') || g:vim_tip_cursormoved != 0
    au CursorMoved * call vimtips#echo()
en
" command
command! -bar Tips cal vimtips#echo()
