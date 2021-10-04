# Build notes

If you want the cover and content PDFs, you can use the files in the `pdf` directory.

If you've made changes, and you want to regenerate them, install tex live and then run:

```
latexmk tex/cover
latexmk tex/main
```

This will create two files, `cover.pdf` and `main.pdf`.

## Publisher versions

Publisher specific versions live in separate branches, with publisher specific changes (page sizes, cover dimensions, ISBN graphics).

These branches are kept up to date with main periodically.

To build a publisher specific version, just change to that branch and run the `latexmk` commands as above.

## Creating ebook version

This is still a work in progress (see the [issues](https://github.com/drinckes/forestvinestosnowtussocks/issues?q=is%3Aissue+is%3Aopen+label%3Aebook)), here are some notes:

- Pandoc - takes forever to install, cabal fails
- tex4ebook - looks more promising but the `SCfigure` elements cause problems
