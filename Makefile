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
	pandoc $(STYLEDIR)/frontpage.md \
	$(STYLEDIR)/table_of_contents.md \
	$(INPUTDIR)/overview.md \
	$(INPUTDIR)/whats-new.md \
	$(INPUTDIR)/contributing.md \
	$(INPUTDIR)/first-steps.md \
	$(INPUTDIR)/installation.md \
	$(INPUTDIR)/additives.md \
	$(INPUTDIR)/admissions.md \
	$(INPUTDIR)/censusevents.md \
	$(INPUTDIR)/chartevents.md \
	$(INPUTDIR)/cptevents.md \
	$(INPUTDIR)/dcaregivers.md \
	$(INPUTDIR)/dcareunits.md \
	$(INPUTDIR)/ditems.md \
	$(INPUTDIR)/dpatients.md \
	$(INPUTDIR)/dunits.md \
	$(INPUTDIR)/demographicdetail.md \
	$(INPUTDIR)/drgevents.md \
	$(INPUTDIR)/icd9.md \
	$(INPUTDIR)/icustayevents.md \
	$(INPUTDIR)/ioevents.md \
	$(INPUTDIR)/labevents.md \
	$(INPUTDIR)/lcpcomorbidityscores.md \
	$(INPUTDIR)/lcpdailysapsi.md \
	$(INPUTDIR)/lcpdailysofa.md \
	$(INPUTDIR)/lcpelixhauserscores.md \
	$(INPUTDIR)/lcpventilation.md \
	$(INPUTDIR)/medevents.md \
	$(INPUTDIR)/microbiologyevents.md \
	$(INPUTDIR)/noteevents.md \
	$(INPUTDIR)/orderentry.md \
	$(INPUTDIR)/poemedorder.md \
	$(INPUTDIR)/procedureevents.md \
	$(INPUTDIR)/totalbalevents.md \
	-o $(OUTPUTDIR)/guidelines.pdf \
	-H $(STYLEDIR)/preamble.tex \
	--template $(STYLEDIR)/template.tex \
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
