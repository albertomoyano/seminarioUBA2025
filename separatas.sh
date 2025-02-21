#!/bin/bash
pdftk ./pdf/epub1-seminarioUBA.pdf cat 5-7 output ./docs/prologo-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 8-11 output ./docs/capitulo1-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 12-15 output ./docs/capitulo2-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 16-20 output ./docs/capitulo3-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 21-23 output ./docs/referencias-epub1-seminarioUBA.pdf
exit
