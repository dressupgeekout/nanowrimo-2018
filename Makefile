BUNDLE?=	bundle

CHAPTERS=	# defined
CHAPTERS+=	frontmatter
CHAPTERS+=	chapter01
CHAPTERS+=	chapter02
CHAPTERS+=	chapter03
CHAPTERS+=	chapter04
CHAPTERS+=	chapter05
CHAPTERS+=	chapter0x

book.pdf: book.adoc
	$(BUNDLE) exec asciidoctor-pdf $<

book.adoc: $(foreach chapter,$(CHAPTERS),$(chapter).adoc)
	rm -f $@
	for chapter in $^; do		\
		cat $${chapter} >> $@;	\
		echo >> $@;		\
		echo >> $@;		\
	done


.PHONY: clean
clean:
	rm -f book.pdf book.adoc
