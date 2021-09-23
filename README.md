# Forest Vines To Snow Tussocks

[![lint status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Super-Linter/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ASuper-Linter)
[![latex compilation status](https://github.com/drinckes/forestvinestosnowtussocks/workflows/Compile-LateX/badge.svg)](https://github.com/drinckes/forestvinestosnowtussocks/actions?query=workflow%3ACompile-LateX)

This is the latex source for the book *Forest Vines To Snow Tussocks* by John Dawson.

It has been converted from the source in the [New Zealand Electronic Text Collection](http://nzetc.victoria.ac.nz/tm/scholarly/tei-DawFore.html), made available by Victoria University of Wellington under the [Creative Commons Attribution-Share Alike 3.0 New Zealand Licence](http://nzetc.victoria.ac.nz/tm/scholarly/tei-NZETC-About-copyright.html#ccbysa).

## Changes To The Book

The aim is for a Latex conversion of the book, not a new book, so I've made few changes other than fixing some typos or scanos (e.g., *Nothojagus* has been replaced with *Nothofagus*), and expanding the scientific names in the text, so that it has *Nothfagus menziesii* instead of *N. menziesii*, and to use sub-entries in the index, with the genus as the top level.

## Book Production

Install [TeX Live](https://www.tug.org/texlive/). You may also need to separately install Biber
(for bibliography management) either from [source](https://github.com/plk/biber) or
[binaries](https://sourceforge.net/projects/biblatex-biber/files/biblatex-biber/current/binaries/).

The fonts used in the text are [EB Garamond](https://www.ctan.org/pkg/ebgaramond) and
[Biolinum](https://www.ctan.org/pkg/libertine).

You should be able to generate the book by running:

```shell
latexmk main
```

## Workflows

A GitHub action has been added to perform lint checks.
