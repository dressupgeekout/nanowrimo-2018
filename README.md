# NaNoWriMo 2018

This repository contains Charlotte Koch's work for National Novel Writing
Month (NaNoWriMo) 2018! It's a story about a skunk who is trying to fit in.


## Generating the PDF

You'll need Ruby and Bundler to install Asciidoctor, which converts the
manuscript (written in the AsciiDoc markup language) to PDF. 

```
$ gem install bundler   # you need Bundler to interpret the Gemfile
$ make install-gems     # installs the necessary gems
$ make                  # actually creates the PDF
```


## Other targets

```
$ make wordcount        # prints the number of words in the story
$ make clean            # deletes intermediate files
```
