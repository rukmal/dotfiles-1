.PHONY: bashrc bash_profile fortran slate vim atom sublime vim_windows git load_bash_profile

bashrc:
	rm .bashrc
	cp /Users/christophersu/.bashrc .

bash_profile:
	rm .bash_profile
	cp /Users/christophersu/.bash_profile .

load_bashrc:
	cp .bashrc ~

load_bash_profile:
	cp .bash_profile ~

fortran:
	rm .fortran
	cp -rf /Users/christophersu/.fortran .

slate:
	rm .slate
	cp -rf /Users/christophersu/.slate .

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
	