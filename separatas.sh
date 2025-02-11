#!/bin/bash
pdftk ./pdf/epub1-seminarioUBA.pdf cat 8-10 output ./docs/prologo-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 11-13 output ./docs/capitulo1-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 15-18 output ./docs/capitulo2-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 19-21 output ./docs/capitulo3-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 22-24 output ./docs/referencias-epub1-seminarioUBA.pdf
exit
