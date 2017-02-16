" =============================================================================
" File:          plugin/vim-tips.vim
" Description:   Random output vim tips.
" Author:        Weilong Wang <github.com/wilon>
" =============================================================================

function! vimtips#echo()
    " load file
    if !exists("g:tipList")
        let g:tipList = readfile(fnamemodify(g:vim_tip_file, ':p'))
    endif
    " random a line
    let randnum = str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
    if !exists("g:tips") || randnum % 10 >= (10 - g:vim_tip_frequency * 10)
        let rand = randnum % len(g:tipList)
        let g:tips = g:tipList[rand]
    endif
    " v > 703 && win width
    if v:version > 703 && winwidth(0) > strdisplaywidth(g:tips)
        " ctrlp bug
        if !exists("g:ctrlp_lines") || g:ctrlp_lines == []
            echo g:tips
        endif
    endif
endfunction
