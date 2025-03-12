#!/bin/bash
pdftk ./pdf/epub1-seminarioUBA.pdf cat 5-7 output ./docs/presentacion-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 8-10 output ./docs/prologo-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 11-13 output ./docs/introduccion-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 14-17 output ./docs/capitulo1-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 18-21 output ./docs/capitulo2-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 22-26 output ./docs/capitulo3-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 27-28 output ./docs/conclusiones-epub1-seminarioUBA.pdf
pdftk ./pdf/epub1-seminarioUBA.pdf cat 29-35 output ./docs/indices-epub1-seminarioUBA.pdf
exit
