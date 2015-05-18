PY=python
PANDOC=pandoc

BASEDIR=$(CURDIR)/pdf
INPUTDIR=$(CURDIR)/_pages
OUTPUTDIR=$(BASEDIR)/
STYLEDIR=$(BASEDIR)/style

help:
	@echo ' 																	  '
	@echo 'Makefile for MIMIC guidelines                                          '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make pdf                         generate a PDF file  			  '
	@echo '   make docx	                       generate a Docx file 			  '
	@echo '                                                                       '
	@echo ' 																	  '
	@echo ' 																	  '
	@echo 'get local templates with: pandoc -D latex/html/etc	  				  '
	@echo 'or generic ones from: https://github.com/jgm/pandoc-templates		  '

pdf:
	pandoc $(INPUTDIR)/*.md \
	-o $(OUTPUTDIR)/guidelines.pdf \
	-H $(STYLEDIR)/preamble.tex \
	--template $(STYLEDIR)/template.tex \
	--csl=$(STYLEDIR)/ref_format.csl \
	-V fontsize=11pt \
	-V papersize=a4paper \
	-V documentclass:report \
	-N \
	--latex-engine=xelatex

docx:
	pandoc $(INPUTDIR)/*.md \
	-o $(OUTPUTDIR)/guidelines.docx \
	--csl=$(STYLEDIR)/ref_format.csl \
	--toc

.PHONY: help pdf docx
