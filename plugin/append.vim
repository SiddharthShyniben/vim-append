" append.vim: append any character anywhere
" Last Change: Sep 24 2021
" Maintainer: Siddharth Shyniben
" License: MIT

nnoremap ga :silent set operatorfunc=AppendOperator<cr>g@
" TODO visual?

function! AppendOperator(type)
	silent execute 'normal! `['

	call inputsave()
	let in = input('')
	call inputrestore()

	silent execute 'normal! i' . in . "\<esc>"
endfunction
