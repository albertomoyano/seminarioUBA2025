#!/bin/bash
pdftk ./pdf/pdf-seminarioUBA.pdf cat 13-15 output ./docs/capitulo1-pdf-seminarioUBA.pdf
pdftk ./pdf/pdf-seminarioUBA.pdf cat 25-25 output ./docs/referencias-pdf-seminarioUBA.pdf
exit
