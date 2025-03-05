#!/bin/bash
pdftk ./pdf/pdf-seminarioUBA.pdf cat 9-11 output ./docs/prologo-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 13-15 output ./docs/capitulo1-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 17-19 output ./docs/capitulo2-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 21-24 output ./docs/capitulo3-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 27-30 output ./docs/referencias-pdf-seminarioUBA.pdf
exit
