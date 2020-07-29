all: index.html 04.html 05.html 06.html

index.html: README.md Makefile style.css
	pandoc -s -c style.css README.md -o index.html

04.html: 04.Rmd
	render 04.Rmd

05.html: 05.Rmd
	render 05.Rmd

06.html: 06.Rmd
	render 06.Rmd
