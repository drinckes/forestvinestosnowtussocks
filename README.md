# Forest Vines To Snow Tussocks

[![lint status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Super-Linter/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ASuper-Linter)
[![latex compilation status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Compile-LateX/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ACompile-LateX)

This is the latex source for the book *Forest Vines To Snow Tussocks* by John Dawson.

It has been converted from the source in the [New Zealand Electronic Text Collection](http://nzetc.victoria.ac.nz/tm/scholarly/tei-DawFore.html), made available by Victoria University of Wellington under the [Creative Commons Attribution-Share Alike 3.0 New Zealand Licence](http://nzetc.victoria.ac.nz/tm/scholarly/tei-NZETC-About-copyright.html#ccbysa).

## Changes To The Book

The aim is for a LaTeX conversion of the book, not a new book, so I've made few changes other than fixing some typos or scanos (e.g., *Nothojagus* has been replaced with *Nothofagus*), and expanding the scientific names in the text, so that it has *Nothfagus menziesii* instead of *N. menziesii*, and to use sub-entries in the index, with the genus as the top level.

In addition, to aid readers from Aotearoa, Māori names for plants have been added where available.

## Contributing

Contributions of corrections or additional information are welcomed. If you are familiar with GitHub and LaTeX, you can send me a pull request, or if you're new to GitHub, just create an issue with the information.

One thing that is badly needed is replacement images. The VUW scans are low-res and in some cases quite poor, so replacements are very welcome! (Note: the images do need to be copyright-free since the book needs to be CC-BY-SA compatible.)

## Workflows

A GitHub action has been added to perform lint checks, and to build the cover and book PDFs (see the `out` directory).

## Book Production

If you have made your own changes, you may want to generate your own PDFs.

Install [TeX Live](https://www.tug.org/texlive/). You may also need to separately install Biber
(for bibliography management) either from [source](https://github.com/plk/biber) or
[binaries](https://sourceforge.net/projects/biblatex-biber/files/biblatex-biber/current/binaries/).

The fonts used in the text are [EB Garamond](https://www.ctan.org/pkg/ebgaramond) and
[Biolinum](https://www.ctan.org/pkg/libertine).

You should be able to generate the book by running:

```shell
latexmk main
latexmk cover
```

Use the `main` branch. The `publisher_*` branches are for edits specific to different online publishers - things like ISBN images, or different cover dimensions. Changes to the `main` branch will be integrated to these branches.
