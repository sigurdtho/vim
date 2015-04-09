setlocal expandtab
setlocal shiftwidth=4
setlocal softtabstop=4

:setlocal foldmethod=syntax


" Curly brackets closing stuff credit Johannes Larsen
if !exists("*g:SubEndBracketEndif")
	function g:SubEndBracketEndif()
		silent! -2s/#if\(n\?def\)\? \(.*\)$\n\n[[:space:]]*}/#if\1 \2\r\r#endif \/\*\2\*\//
	endfunction
endif
inoremap <silent> <buffer> <NL> <CR><CR>}<Esc>:silent! call g:SubEndBracketEndif()<CR>-cc

