# Gestión de bibliografías con BibTeX y BibLaTeX

## Introducción
La gestión de referencias bibliográficas es un aspecto esencial en la elaboración de documentos académicos y científicos. En LaTeX, existen dos herramientas principales para manejar bibliografías: **BibTeX** y **BibLaTeX**. Ambas permiten organizar y citar referencias de manera eficiente, pero difieren en su enfoque y capacidades. En este trabajo, exploraremos las características, ventajas y desventajas de cada una, así como su uso en documentos LaTeX.

## BibTeX: el estándar tradicional
### Características Principales
- **Origen**: Desarrollado en la década de 1980 como una herramienta para gestionar bibliografías en LaTeX.
- **Funcionamiento**: Utiliza un archivo `.bib` que contiene las referencias bibliográficas en un formato estructurado.
- **Compatibilidad**: Ampliamente soportado en distribuciones de LaTeX.
- **Estilos**: Se basa en archivos de estilo (`.bst`) para definir el formato de las citas y la bibliografía.

### Ventajas
- **Simplicidad**: Fácil de usar para documentos con necesidades bibliográficas básicas.
- **Compatibilidad**: Funciona con la mayoría de los editores y compiladores de LaTeX.
- **Estilos predefinidos**: Incluye estilos comunes como `plain`, `abbrv`, y `unsrt`.

### Desventajas
- **Limitaciones en personalización**: Los estilos de citas y bibliografía son difíciles de modificar.
- **Soporte limitado para Unicode**: No maneja bien caracteres especiales o idiomas no occidentales.
- **Funcionalidades avanzadas**: Carece de soporte para citas complejas, como notas al pie o múltiples estilos de citación en un mismo documento.

### Ejemplo de Uso
```latex
\documentclass{article}
\usepackage[utf8]{inputenc}
\usepackage{biblatex} % No se usa con BibTeX
\addbibresource{referencias.bib} % Solo para BibLaTeX

\begin{document}
Este es un ejemplo de cita \cite{knuth1984texbook}.

\bibliographystyle{plain} % Estilo de BibTeX
\bibliography{referencias} % Archivo .bib
\end{document}