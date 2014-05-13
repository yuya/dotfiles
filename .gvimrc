if has('gui_macvim')
  set enc=utf-8
  set fenc=utf-8
  set fencs=iso-2022-jp,utf-8,euc-jp,cp932
  set guifont=Ricty:h13
  set guifontwide=Ricty:h13
  set transparency=5
  colorscheme Monokai
endif

let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
  autocmd!
  autocmd VimLeavePre * call s:save_window()
  function! s:save_window()
    let options = [
      \ 'set columns=' . &columns,
      \ 'set lines=' . &lines,
      \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
      \ ]
    call writefile(options, g:save_window_file)
  endfunction
augroup END

if filereadable(g:save_window_file)
  execute 'source' g:save_window_file
endif

