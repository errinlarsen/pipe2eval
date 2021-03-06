com! -nargs=+ Pipe2 call Pipe2eval(<f-args>)

let s:map_key_default = "<Space>"

function! Pipe2eval(lang)
  let l:map_key = exists('g:pipe2eval_map_key') ? g:pipe2eval_map_key : s:map_key_default
	execute "vm <buffer> ". l:map_key ." :!". g:pipe2eval ." ". a:lang . "<CR><CR>"
endfunction

au FileType * call Pipe2eval(&filetype)
