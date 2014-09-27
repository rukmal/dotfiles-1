.PHONY: bashrc bash_profile fortran slate vim atom sublime vim_windows git load_bash_profile load_bash

load_bash:
	cp bash/.bashrc ~
	cp bash/.bash_profile ~

bashrc:
	cp ~/.bashrc bash/

bash_profile:
	cp ~/.bash_profile bash/

load_bashrc:
	cp bash/.bashrc ~

load_bash_profile:
	cp bash/.bash_profile ~

fortran:
	cp -rf ~/.fortran .

slate:
	cp -rf ~/.slate mac/

vim:
	rm -rf .vimrc
	cp /Users/christophersu/.vimrc .

vimr:
	rm -rf .vimrc
	cp /Users/christophersu/.vimrc .

load_vim:
	cp .vim ~

load_vimrc:
	cp .vimrc ~

atom:
	rm -rf atom
	cp -rf /Users/christophersu/.atom .

sublime:
	rm -rf sublime_text_3
	cp -rf /Users/christophersu/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ./sublime_text_3
git:
	rm .gitconfig
	cp ~/.gitconfig .
	rm .gitignore_global
	cp ~/.gitignore_global .

vim_windows:
	rm _vimrc
	cp ~/.vimrc _vimrc

# win_keys:
# 	rm win_keys.ahk
# 	cp "C:\Users\chrissu\Desktop\Remap Keys.ahk" win_keys.ahk
	