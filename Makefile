.PHONY: bashrc bash_profile fortran slate vim atom sublime

bashrc:
	rm .bashrc
	cp -rf /Users/christophersu/.bashrc .

bash_profile:
	rm .bash_profile
	cp -rf /Users/christophersu/.bash_profile .

fortran:
	rm .fortran
	cp -rf /Users/christophersu/.fortran .

slate:
	rm .slate
	cp -rf /Users/christophersu/.slate .

vim:
	rm -rf vim
	cp -rf /Users/christophersu/.vim .

atom:
	rm -rf atom
	cp -rf /Users/christophersu/.atom .

sublime:
	rm -rf sublime_text_3
	cp -rf /Users/christophersu/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ./sublime_text_3

vim_windows:
	rm -rf vimfiles
	cp -rf "C:\Program Files (x86)\Vim\vimfiles" .
	rm _vimrc
	cp ~/.vimrc _vimrc
