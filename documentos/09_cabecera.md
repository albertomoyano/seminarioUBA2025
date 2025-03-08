# División de archivos en cabecera y cuerpo

## Introducción
En la mayoría de los lenguajes de marcas y de programación, la estructura de los archivos suele dividirse en dos partes fundamentales: la cabecera y el cuerpo. Esta separación permite organizar la información de manera clara, definiendo metadatos, configuraciones y contenido de manera estructurada.

## Concepto de cabecera y cuerpo
### Cabecera
La cabecera suele contener información sobre el archivo, configuración, declaraciones de variables, definiciones de estilos o cualquier dato necesario para interpretar correctamente el contenido principal.

### Cuerpo
El cuerpo contiene la información principal, el contenido que se desea procesar, visualizar o ejecutar, dependiendo del lenguaje y su propósito.

## Ejemplos en Diferentes Lenguajes

### Markdown (MD)
En Markdown, la cabecera se puede definir mediante un bloque YAML opcional:
```md
---
title: "Ejemplo de Cabecera"
author: "Autor"
date: "2024"
---

# Título principal
Contenido del documento.
```
Aquí, la cabecera define metadatos sobre el documento, mientras que el cuerpo es el contenido en sí.

### LaTeX
En LaTeX, la cabecera se encuentra en el preámbulo y el cuerpo dentro del entorno `document`:
```latex
\documentclass{article}
\usepackage{graphicx}

\begin{document}
\title{Ejemplo de Cabecera}
\author{Autor}
\date{2024}
\maketitle

Contenido del documento.
\end{document}
```
La cabecera incluye configuraciones y paquetes, mientras que el cuerpo contiene el contenido principal.

### BibTeX
En BibTeX, cada entrada tiene una estructura clave-valor:
```bibtex
@book{ejemplo,
  author = {Autor},
  title = {Ejemplo de Cabecera},
  year = {2024}
}
```
Aquí, la cabecera define los atributos de la fuente, mientras que el cuerpo contendría varias referencias.

### HTML
En HTML, la cabecera está dentro de `<head>`, y el cuerpo dentro de `<body>`:
```html
<!DOCTYPE html>
<html>
<head>
    <title>Ejemplo de Cabecera</title>
</head>
<body>
    <h1>Contenido del Documento</h1>
</body>
</html>
```
La cabecera define metadatos y enlaces a estilos, mientras que el cuerpo contiene el contenido visible.

### Python
En Python, la cabecera suele contener importaciones y definiciones de funciones:
```python
# Cabecera
import os

def funcion():
    print("Ejemplo de Cabecera y Cuerpo")

# Cuerpo
if __name__ == "__main__":
    funcion()
```
La cabecera contiene las importaciones y definiciones, y el cuerpo la ejecución del programa.

## Tabla comparativa
| Lenguaje  | Cabecera | Cuerpo |
|-----------|---------|--------|
| Markdown | YAML Front Matter (opcional) | Contenido principal |
| LaTeX    | Preámbulo (documentclass, usepackage) | Documento entre `\begin{document}` y `\end{document}` |
| BibTeX   | Definición de entradas (clave-valor) | Referencias bibliográficas |
| HTML     | `<head>` con metadatos y enlaces | `<body>` con el contenido |
| Python   | Importaciones y definiciones | Código ejecutable |

## Conclusión
La división en cabecera y cuerpo es un concepto esencial en múltiples lenguajes, facilitando la organización y estructura de los archivos. Aunque la forma y propósito de cada sección varía según el lenguaje, la idea central de separar metadatos, configuraciones e instrucciones de la parte principal del contenido se mantiene constante.

