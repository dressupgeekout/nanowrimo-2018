BUNDLE?=	bundle

CHAPTERS=	# defined
CHAPTERS+=	frontmatter
CHAPTERS+=	chapter01
CHAPTERS+=	chapter02
CHAPTERS+=	chapter03
CHAPTERS+=	chapter04
CHAPTERS+=	chapter05
CHAPTERS+=	chapterx01
CHAPTERS+=	chapterx02
CHAPTERS+=	chapterx03
CHAPTERS+=	chapterx04
CHAPTERS+=	chapterx05
CHAPTERS+=	chapterx06
CHAPTERS+=	chapterx07
CHAPTERS+=	chapterx08
CHAPTERS+=	chapterx09
CHAPTERS+=	chapterx10

book.pdf: book.adoc
	$(BUNDLE) exec asciidoctor-pdf $<

book.adoc: $(foreach chapter,$(CHAPTERS),$(chapter).adoc)
	printf "" > $@
	for chapter in $^; do		\
		cat $${chapter} >> $@;	\
		echo >> $@;		\
		echo >> $@;		\
	done

.PHONY: install-gems
install-gems:
	$(BUNDLE) install --path ./vendor

.PHONY: clean
clean:
	rm -f book.pdf book.adoc

.PHONY: wordcount
wordcount: book.adoc
	wc -w $<
