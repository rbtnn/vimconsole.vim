

scriptencoding utf-8

if exists("g:loaded_vimconsole")
  finish
endif
let g:loaded_vimconsole = 1

let s:save_cpo = &cpo
set cpo&vim

let g:vimconsole#hooks = get(g:,'vimconsole#hooks',{})
let g:vimconsole#height = get(g:,'vimconsole#height',6)
let g:vimconsole#auto_redraw = get(g:,'vimconsole#auto_redraw',0)
let g:vimconsole#plain_mode = get(g:,'vimconsole#plain_mode', 0)
let g:vimconsole#maximum_caching_objects_count = get(g:,'vimconsole#maximum_caching_objects_count', 20)

command! -nargs=0 VimConsoleOpen   :call vimconsole#winopen()
command! -nargs=0 VimConsoleClose  :call vimconsole#winclose()
command! -nargs=0 VimConsoleClear  :call vimconsole#clear()
command! -nargs=0 VimConsoleRedraw :call vimconsole#redraw()
command! -nargs=0 VimConsoleTest   :call vimconsole#test()
command! -nargs=0 VimConsoleToggle :call vimconsole#wintoggle()
command! -nargs=1 -complete=expression VimConsole        :call vimconsole#log(<args>)
command! -nargs=1 -complete=expression VimConsoleLog     :call vimconsole#log(<args>)
command! -nargs=1 -complete=expression VimConsoleError   :call vimconsole#error(<args>)
command! -nargs=1 -complete=expression VimConsoleWarn    :call vimconsole#warn(<args>)

let &cpo = s:save_cpo
finish

