#!/bin/bash
pdftk ./pdf/pdf-seminarioUBA.pdf cat 9-10 output ./docs/presentacion-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 11-12 output ./docs/prologo-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 13-14 output ./docs/introduccion-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 15-17 output ./docs/capitulo1-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 19-21 output ./docs/capitulo2-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 23-25 output ./docs/capitulo3-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 27-28 output ./docs/conclusiones-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 29-41 output ./docs/indices-pdf-seminarioUBA.pdf
exit
