.PHONY: pre render publish

pre:
	quarto preview ./

render:
	quarto render

publish:
	quarto publish gh-pages
