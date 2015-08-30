autocmd BufNewFile,BufRead *.git/COMMIT_EDITMSG    setf gitcommit
autocmd BufNewFile,BufRead *.git/config,.gitconfig setf gitconfig
autocmd BufNewFile,BufRead *.git/**
	\ if getline(1) =~ '^\x\{40\}\>\|^ref: ' |
	\   setf git |
	\ endif
