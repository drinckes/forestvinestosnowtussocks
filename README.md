# Forest Vines To Snow Tussocks

[![lint status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Super-Linter/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ASuper-Linter)
[![latex compilation status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Compile-LateX/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ACompile-LateX)

This is the LaTeX source for the book *Forest Vines To Snow Tussocks* by John Dawson.

It has been converted from the source in the [New Zealand Electronic Text Collection](http://nzetc.victoria.ac.nz/tm/scholarly/tei-DawFore.html), made available by Victoria University of Wellington under the [Creative Commons Attribution-Share Alike 3.0 New Zealand Licence](http://nzetc.victoria.ac.nz/tm/scholarly/tei-NZETC-About-copyright.html#ccbysa).

## Changes To The Book

The aim is for a LaTeX conversion of the book, not a new book, so I've made few changes other than fixing some typos or scanos (e.g., *Nothojagus* has been replaced with *Nothofagus*), and expanding the scientific names in the text, so that it has *Nothofagus menziesii* instead of *N. menziesii*, and to use sub-entries in the index, with the genus as the top level.

In addition, to aid readers from Aotearoa, Māori names for plants have been added.

## Contributing

Contributions of corrections or additional information are welcomed. If you are familiar with GitHub and LaTeX, you can send me a pull request, or if you're new to GitHub, just create an issue with the information.

One thing that is badly needed is replacement images. The VUW scans are low-res and in some cases quite poor, so replacements are very welcome! (Note: the images do need to be copyright-free since the book needs to be CC-BY-SA compatible.)

## Purchasing

You are entirely free to use the PDFs, or generate your own, and print them.

Alternatively, you can order copies from:

* lulu
    * A hardback copy is [available](https://www.lulu.com/shop/john-dawson-and-doug-rinckes/forest-vines-to-snow-tussocks/hardcover/product-mv8m9r.html)
    * A paperback copy is coming soon 
*  Amazon
    *  A hardback copy is available in the [US](https://www.amazon.com/dp/B09HFSMF5T), [UK](https://www.amazon.co.uk/dp/B09HFSMF5T), [DE](https://www.amazon.de/dp/B09HFSMF5T), [FR](https://www.amazon.fr/dp/B09HFSMF5T), [ES](https://www.amazon.es/dp/B09HFSMF5T), [IT](https://www.amazon.it/dp/B09HFSMF5T) stores.
    *  A paperback copy is available in the [US](https://www.amazon.com/dp/B09HG54WGF), [UK](https://www.amazon.co.uk/dp/B09HG54WGF), [DE](https://www.amazon.de/dp/B09HG54WGF), [FR](https://www.amazon.fr/dp/B09HG54WGF), [ES](https://www.amazon.es/dp/B09HG54WGF), [IT](https://www.amazon.it/dp/B09HG54WGF), [JP](https://www.amazon.co.jp/dp/B09HG54WGF), [CA](https://www.amazon.ca/dp/B09HG54WGF), [AU](https://www.amazon.com.au/dp/B09HG54WGF) stores.
    *  Make sure you buy a new copy, and check all the options. Amazon will list third-party sellers and they are more expensive.

## Workflows

A GitHub action has been added to perform lint checks, and to build the cover and book PDFs (see the `out` directory).

## Book Production

If you have made your own changes, you may want to generate your own PDFs.

Install [TeX Live](https://www.tug.org/texlive/). You may also need to separately install Biber
(for bibliography management) either from [source](https://github.com/plk/biber) or
[binaries](https://sourceforge.net/projects/biblatex-biber/files/biblatex-biber/current/binaries/).

The fonts used in the text are [EB Garamond](https://www.ctan.org/pkg/ebgaramond) and
[Biolinum](https://www.ctan.org/pkg/libertine).

PDFs are automatically generated in the `pdf` directory.
If you have made your own edits, you should be able to generate the book by running:

```shell
latexmk tex/cover_generic
latexmk tex/book_generic
```

Publisher specific versions of the book and cover may also exist, such as `cover_lulu_paperback`. This is to make it easier to meet requirements such as different trim sizes, page dimensions, or ISBN graphics that may or may not have to be included.
