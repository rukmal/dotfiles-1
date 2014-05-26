.PHONY: bashrc bash_profile fortran slate vim atom sublime

bashrc:
	rm .bashrc
	cp -rf /Users/christophersu/.bashrc .bashrc

bash_profile:
	rm .bash_profile
	cp -rf /Users/christophersu/.bash_profile .bash_profile

fortran:
	rm .fortran
	cp -rf /Users/christophersu/.fortran .fortran

slate:
	rm .slate
	cp -rf /Users/christophersu/.slate .slate

vim:
	rm -rf vim
	cp -rf /Users/christophersu/.vim ./vim

atom:
	rm -rf atom
	cp -rf /Users/christophersu/.atom ./atom

sublime:
	rm -rf sublime_text_3
	cp -rf /Users/christophersu/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ./sublime_text_3
