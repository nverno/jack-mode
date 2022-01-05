all:
	@

README.md : el2markdown.el ebnf-mode.el
	emacs -batch -l $< ebnf-mode.el -f el2markdown-write-readme

.INTERMEDIATE: el2markdown.el
el2markdown.el:
	wget -q -O $@ "https://github.com/Lindydancer/el2markdown/raw/master/el2markdown.el"
