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
This version can be built with:

```shell
latexmk tex/cover_lulu_paperback
latexmk tex/book_lulu_paperback
```

If any other custom versions are required (e.g., a lulu hardback), they will be supported the same way.

## Creating ebook version

This is still a work in progress (see the [issues](https://github.com/drinckes/forestvinestosnowtussocks/issues?q=is%3Aissue+is%3Aopen+label%3Aebook)), here are some notes:

- Pandoc - takes forever to install, cabal fails
- tex4ebook - looks more promising but the `SCfigure` elements cause problems
