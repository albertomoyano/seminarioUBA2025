# Personalización de encabezados, pies de página y títulos en LaTeX con `fancyhdr` y `titlesec`

## Introducción
LaTeX permite una personalización avanzada de documentos mediante paquetes como `fancyhdr` para modificar encabezados y pies de página, y `titlesec` para personalizar títulos y secciones. En este trabajo, exploraremos ambos paquetes, sus funcionalidades y una comparación entre ellos.

---

## Personalización con `fancyhdr`
El paquete `fancyhdr` permite modificar los encabezados y pies de página para incluir información como títulos, nombres de autores, numeraciones y otros elementos decorativos.

### Instalación y carga del paquete
Para utilizar `fancyhdr`, se debe incluir en el preámbulo del documento:

```latex
\usepackage{fancyhdr}
\pagestyle{fancy}
```

La línea `\pagestyle{fancy}` activa el estilo personalizado en todo el documento.

### Estructura de `fancyhdr`
El paquete divide el encabezado y pie de página en seis partes:

- `\lhead` (Encabezado izquierdo)
- `\chead` (Encabezado central)
- `\rhead` (Encabezado derecho)
- `\lfoot` (Pie de página izquierdo)
- `\cfoot` (Pie de página central)
- `\rfoot` (Pie de página derecho)

Por defecto, LaTeX muestra solo la numeración en la parte central del pie de página.

### Personalización de Encabezados y Pies de Página
Se pueden modificar los elementos de `fancyhdr` de la siguiente manera:

```latex
\fancyhf{} % Limpia cualquier configuración previa
\fancyhead[L]{Nombre del documento} % Encabezado izquierdo
\fancyhead[C]{Título del capítulo} % Encabezado central
\fancyhead[R]{Autor} % Encabezado derecho
\fancyfoot[L]{Fecha} % Pie de página izquierdo
\fancyfoot[C]{\thepage} % Número de página en el centro
\fancyfoot[R]{Universidad} % Pie de página derecho
```

### Diferentes estilos en páginas impares y pares

```latex
\fancyhead[LE,RO]{\thepage} % Número de página en lados opuestos
\fancyhead[RE,LO]{Título del capítulo}
```

### Encabezados y pies de página en páginas de capítulos

```latex
\renewcommand{\chaptermark}[1]{\markboth{Capítulo \thechapter. #1}{}}
\renewcommand{\sectionmark}[1]{\markright{Sección \thesection. #1}}
```

Luego, se pueden usar estas marcas en los encabezados:

```latex
\fancyhead[LO]{\leftmark} % Título del capítulo
\fancyhead[RE]{\rightmark} % Título de la sección
```

---

## Personalización con `titlesec`
El paquete `titlesec` permite modificar la apariencia de los títulos en los documentos LaTeX, controlando tamaño, espaciado, alineación y numeración.

### Instalación y Carga del Paquete
Para utilizar `titlesec`, se debe incluir en el preámbulo:

```latex
\usepackage{titlesec}
```

### Modificación de títulos de secciones
Se puede redefinir la apariencia de los títulos de sección con:

```latex
\titleformat{\section}[hang]
  {\Large\bfseries}{\thesection}{1em}{}
```

Aquí:
- `\section` indica que se está modificando los títulos de sección.
- `[hang]` define el formato (otros valores pueden ser `block`, `display`, etc.).
- `{\Large\bfseries}` establece el tamaño y negrita.
- `{\thesection}` conserva la numeración.

### Espaciado entre Títulos y Texto
Para definir el espacio antes y después de los títulos:

```latex
\titlespacing*{\section}{0pt}{10pt}{5pt}
```

Esto define:
- `{0pt}`: Espaciado a la izquierda.
- `{10pt}`: Espaciado antes del título.
- `{5pt}`: Espaciado después del título.

### Personalización de capítulos

```latex
\titleformat{\chapter}[display]
  {\Huge\bfseries\centering}{\chaptername\ \thechapter}{20pt}{\Huge}
```

Esto alinea el título al centro y modifica su tamaño.

### Eliminación del Texto "Capítulo"
Si no se desea mostrar "Capítulo X", se puede hacer:

```latex
\titleformat{\chapter}[display]
  {\Huge\bfseries\centering}{\thechapter}{20pt}{\Huge}
```

---

## Comparación entre `fancyhdr` y `titlesec`

| Característica        | `fancyhdr` | `titlesec` |
|----------------------|------------|------------|
| Modificación de encabezados y pies de página | ✅ Sí | ❌ No |
| Personalización de títulos | ❌ No | ✅ Sí |
| Control sobre numeración | ✅ Sí | ✅ Sí |
| Control sobre espaciado | ❌ No | ✅ Sí |
| Aplicable a capítulos y secciones | ✅ (solo encabezados/pies) | ✅ |

### Conclusiones
- `fancyhdr` es ideal para modificar encabezados y pies de página, mientras que `titlesec` permite personalizar títulos y secciones.
- Ambos paquetes pueden usarse en conjunto para un diseño completo y profesional en documentos LaTeX.
- `titlesec` ofrece mayor control sobre la tipografía y espaciado de los títulos, mientras que `fancyhdr` se centra en el formato de página.

Si se necesita un diseño altamente personalizado, se recomienda combinar ambos paquetes para lograr un documento bien estructurado y estéticamente mejorado.

