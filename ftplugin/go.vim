""""""""""""""""""""""""""""""""""""""""""
"    LICENSE: 
"     Author: 
"    Version: 
" CreateTime: 2018-08-02 10:19:08
" LastUpdate: 2018-08-02 10:19:08
"       Desc: 
""""""""""""""""""""""""""""""""""""""""""
if exists("s:is_load")
	finish
endif
let s:is_load = 1
func s:go_format()
	if &ft !=# "go"
		return
	endif

	exe '!goimports -w ' . bufname("%")
	exe ':e'
endfunc

nnoremap gq :call <SID>go_format()<cr>
