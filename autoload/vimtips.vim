" =============================================================================
" File:          plugin/vim-tips.vim
" Description:   Random output vim tips.
" Author:        Weilong Wang <github.com/wilon>
" =============================================================================

function! vimtips#echo()
    let randnum = str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
    if !exists("g:tipList")
        let g:tipList = readfile(fnamemodify(g:vim_tip_file, ':p'))
    endif
    "let rand = line('.') % len(g:tipList)
    if !exists("g:tips") || randnum % 10 >= (10 - g:vim_tip_frequency * 10)
        let rand = randnum % len(g:tipList)
        let g:tips = g:tipList[rand]
    endif
    if winwidth(0) > strdisplaywidth(g:tips)
        echo g:tips
    endif
endfunction
