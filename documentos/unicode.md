# Unicode: una guía práctica para su uso en LaTeX

## Introducción

Unicode es el estándar de codificación de caracteres más amplio y utilizado en la actualidad, permitiendo la representación de casi todos los sistemas de escritura del mundo. Su implementación en LaTeX mediante XeTeX y LuaTeX ha facilitado enormemente el uso de tipografías con caracteres extendidos y escritura multilingüe sin necesidad de comandos especiales.

En este trabajo exploraremos:
- Los fundamentos de Unicode y su organización interna
- La historia de los sistemas de codificación previos
- Su implementación en LaTeX y herramientas relacionadas
- Casos prácticos y ejemplos de configuración

## Fundamentos de Unicode

Unicode es un sistema de codificación que asigna a cada carácter un punto de código único, denominado *code point*, dentro de un espacio numérico de hasta 1.114.112 posibles valores. Actualmente, alrededor de 150.000 caracteres han sido definidos dentro de este espacio.

### Estructura de Unicode

Los caracteres en Unicode se organizan en bloques y planos:

- **Planos Unicode**: Unicode está dividido en 17 planos de 65.536 posiciones cada uno. Los más relevantes son:
  - **Plano Multilingüe Básico (BMP, U+0000 a U+FFFF)**: Contiene los caracteres más utilizados, incluyendo latinos, griegos, cirílicos y cjk básicos.
  - **Planos Suplementarios**: Contienen caracteres menos comunes como jeroglífcos egipcios, emojis y glifos especializados.

- **Bloques Unicode**: Dentro de los planos, los caracteres se agrupan en bloques temáticos como "Latin Extended-A", "Greek and Coptic" o "Mathematical Alphanumeric Symbols".

### Formatos de codificación

Unicode define varios formatos de almacenamiento:

- **UTF-8**: codificación variable de 1 a 4 bytes, compatible con ASCII y predominante en la web.
- **UTF-16**: codificación de 2 o 4 bytes, usada en sistemas operativos como MS Windows.
- **UTF-32**: codificación fija de 4 bytes por carácter, eficiente para procesamiento pero poco usada en almacenamiento.

## Historia de los sistemas de codificación

Antes de Unicode, existían múltiples sistemas de codificación incompatibles entre sí. Algunos ejemplos incluyen:

1. **ASCII (1963-1986)**: sistema de 7 bits que representaba solo caracteres para escritura en inglés.
2. **ISO 8859 (1987-2000s)**: series de codificaciones de 8 bits con variantes para diferentes idiomas.
3. **Shift-JIS y Big5 (1980s-1990s)**: codificaciones para japonés y chino respectivamente.

Unicode resolvió estos problemas al unificar todos los caracteres en un solo estándar.

## Implementación en LaTeX

LaTeX tradicional no maneja Unicode de forma nativa, pero XeTeX y LuaTeX han introducido soporte completo. El paquete `fontspec` permite configurar tipografías compatibles:

```latex
\usepackage{fontspec}
\setmainfont{Libertinus Serif}
```

Para caracteres específicos, se pueden usar secuencias Unicode directamente en el código:

```latex
\textbf{Ejemplo:} Texto en griego: \textgreek{Αλφά}.
```

## Casos prácticos

### Documento multilingüe
```latex
\documentclass{article}
\usepackage{fontspec}
\setmainfont{Noto Sans}
\begin{document}
Hola, 世界, مرحبًا, Привет!
\end{document}
```

### Uso de caracteres matemáticos
```latex
\documentclass{article}
\usepackage{unicode-math}
\setmathfont{XITS Math}
\begin{document}
La fórmula \( \int_{0}^{\infty} e^{-x^2} dx \) usa caracteres Unicode.
\end{document}
```

## Conclusión

Unicode ha revolucionado la tipografía digital al permitir la representación universal de caracteres en cualquier idioma o sistema de escritura. Su integración con LaTeX, especialmente a través de LuaTeX, ha facilitado el uso de tipografías avanzadas con un control tipográfico de alta calidad.
