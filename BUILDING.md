# Build notes

If you want the cover and content PDFs, you can use the files in the `pdf` directory.

If you've made changes, and you want to regenerate them, install tex live and then run:

```shell
latexmk tex/cover_generic
latexmk tex/book_generic
```

This will create two files, `cover_generic.pdf` and `main_generic.pdf`.

## Publisher versions

The generic versions use page and trim sizes appropriate for [KDP](https://kdp.amazon.com), since it doesn't have any other requirements.

There are versions for [lulu](https://lulu.com), since it has slightly different trim and spine requirements, as well as needing an ISBN on the cover and copyright pages.
They can be built with:

```shell
latexmk tex/cover_lulu_paperback
latexmk tex/book_lulu_paperback
latexmk tex/cover_lulu_hardback
latexmk tex/book_lulu_hardback
```

If any other custom versions are required, they should be supported the same way.

### ISBN graphics

You may have the choice of getting an ISBN graphic as PNG, PDF or SVG.

PNGs are typically low res, and PDFs might not have properly embedded fonts (lulu, I'm looking at you), causing problems when you upload the final cover or book PDF.

Download as SVG and export it to a PNG.
The final image size is about 38mm wide, roughly 1.5 inches, so make the image about 900 pixels wide (for 600 dpi).

The `\includegraphics` command needs to set the width to 38mm.

## Creating ebook version

This is still a work in progress (see the [issues](https://github.com/drinckes/forestvinestosnowtussocks/issues?q=is%3Aissue+is%3Aopen+label%3Aebook)), here are some notes:

- Pandoc - takes forever to install, cabal fails
- tex4ebook - looks more promising but the `SCfigure` elements cause problems
