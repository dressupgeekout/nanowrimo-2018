# nanowrimo 2018

This repository contains Charlotte Koch's work for National Novel Writing
Month (NaNoWriMo) 2018.


## Generating the PDF

You'll need Ruby and Bundler to install Asciidoctor, which converts the
manuscript (written in the AsciiDoc markup language) to PDF. 

```
$ gem install bundler
$ bundle install --path ./vendor
$ make
```
