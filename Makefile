BUNDLE?=	bundle

CHAPTERS=	# defined
CHAPTERS+=	frontmatter
CHAPTERS+=	chapter01
CHAPTERS+=	chapter02

book.pdf: book.adoc
	$(BUNDLE) exec asciidoctor-pdf $<

book.adoc: $(foreach chapter,$(CHAPTERS),$(chapter).adoc)
	cat $^ > $@

.PHONY: clean
clean:
	rm -f book.pdf book.adoc
