
function! NumBuffers()
	let i = bufnr('$')
	let j = 0
	while i >= 1
		if buflisted(i)
			let j+=1
		endif
		let i-=1
	endwhile
	return j
endfunction

function! WinBufClose(write)
	if a:write == 1
		let out = "write|"
	else
		let out = ""
	endif
	let n = NumBuffers()
	if n == 1
		return l:out . "quit"
	else
		return l:out . "bdelete"
	endif
endfunction

cnoreabbrev <expr> q   WinBufClose(0)
cnoreabbrev <expr> wq  WinBufClose(1)

