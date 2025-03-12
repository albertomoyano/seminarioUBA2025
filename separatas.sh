#!/bin/bash
pdftk ./pdf/pdf-seminarioUBA.pdf cat 9-11 output ./docs/presentacion-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 13-15 output ./docs/prologo-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 17-19 output ./docs/introduccion-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 21-23 output ./docs/capitulo1-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 25-27 output ./docs/capitulo2-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 29-32 output ./docs/capitulo3-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 33-34 output ./docs/conclusiones-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 35-46 output ./docs/indices-pdf-seminarioUBA.pdf
exit
