# latexmk configuration

$pdf_mode = 1;

# Need nonstopmode because the first pass must complain about all the missing files,
# so they will be built at the start of one of the later passes.
$pdflatex = 'pdflatex --interaction=nonstopmode --shell-escape %O %S';
