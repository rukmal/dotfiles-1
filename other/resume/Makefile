.PHONY: resume

DATE=`date +'%Y-%m-%d'`

resume:
	cp Resume.pdf ~/Desktop/Su_Christopher_Resume.pdf
	cp Resume.pdf ~/Dropbox/Public/Resume.pdf
	cp Resume.pdf ~/Dropbox/Public/Su_Christopher_Resume.pdf
	cp Resume.pdf ~/code/csu.github.io/Su_Christopher_Resume.pdf
	cp Resume.pdf Resume-$(DATE).pdf
	cd ~/code/csu.github.io && convert -density 200 -trim Su_Christopher_Resume.pdf resume/Su_Christopher_Resume.png && git add Su_Christopher_Resume.pdf resume/Su_Christopher_Resume.png && git commit -m "resume" && git push
	