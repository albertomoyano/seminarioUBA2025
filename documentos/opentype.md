# Features OpenType en LaTeX: pequeña guía práctica

## Introducción

Las tipografías OpenType representan uno de los avances más significativos en la tipografía digital, ofreciendo capacidades avanzadas que van más allá del simple renderizado de caracteres. Este artículo explora cómo LaTeX, mediante LuaTeX, permite aprovechar estas características de una manera que actualmente no está disponible en software tradicional de autoedición.

En este artículo exploraremos:
- Los fundamentos de OpenType y sus características
- La evolución histórica de las variaciones tipográficas
- Las capacidades específicas de OpenType en LaTeX
- Implementaciones prácticas y casos de uso

## Fundamentos de OpenType

OpenType es un formato de fuente tipográfica desarrollado conjuntamente por Adobe y Microsoft. Sus principales ventajas incluyen:

- Compatibilidad multiplataforma
- Soporte para conjuntos de caracteres extensos
- Características tipográficas avanzadas
- Capacidad para manejar variaciones ópticas

Las fuentes OpenType pueden contener hasta 65,536 glifos, permitiendo un amplio conjunto de caracteres, ligaduras, alternativas estilísticas y variaciones numéricas. Esta flexibilidad las hace ideales para trabajos tipográficos profesionales. Hay que distinguir entre dos conceptos diferentes que a menudo se confunden:

### El formato OpenType:

Tiene un límite de 65,536 glifos por tabla individual, pero puede usar múltiples tablas para superar esta limitación. Las tablas más comunes son `cmap` (mapeo de caracteres), `glyf` (datos de glifos), etc.

### Unicode

El estándar Unicode actual (15.1) tiene espacio para 1.114.112 caracteres, actualmente tiene asignados aproximadamente 150.000 caracteres, no todos estos son glifos visuales (hay códigos de control, espacios, etc.)

### Una fuente OpenType puede:

- Mapear más de 65,536 glifos usando múltiples subtablas
- Usar características como variantes contextuales y ligaduras para generar glifos adicionales
- Emplear tecnologías como OpenType Collections (.ttc) para agrupar múltiples fuentes

Por ejemplo, la fuente Source Han Sans (una fuente CJK) contiene más de 65,536 glifos porque:

- Utiliza múltiples subtablas para organizar los glifos
- Implementa un sistema de mapeo complejo para acceder a todos los caracteres
- Técnicamente es una colección de fuentes que trabajan juntas

Así que una fuente OpenType puede tener más de 65,536 glifos en total, pero esto se logra mediante estructuras complejas dentro del formato, no como una simple lista lineal de glifos.

## Historia y evolución de las variaciones tipográficas

La historia de las variaciones tipográficas se remonta a los inicios de la impresión con tipos móviles. En la era del plomo, cada tamaño de letra requería un diseño específico debido a limitaciones técnicas en la fabricación de tipos y los efectos de la ganancia de punto en la impresión.

La evolución histórica puede resumirse en tres etapas principales:

1. Era del plomo (1450-1950s):
   - Diseños específicos para cada tamaño
   - Limitaciones técnicas en la producción
   - Control manual de la ganancia de punto

2. Era de la fotocomposición (1950s-1980s):
   - Introducción de la escalabilidad
   - Pérdida inicial de las variaciones ópticas
   - Simplificación del proceso de producción

3. Era digital (1980s-presente):
   - Recuperación de las variaciones ópticas
   - Optimización para diferentes tamaños
   - Integración de características avanzadas

## Variaciones ópticas en OpenType

Las variaciones ópticas modernas se diseñan para optimizar la legibilidad y el impacto visual en diferentes tamaños. Los rangos típicos incluyen:

1. Caption (hasta 8 puntos):
   - Mayor altura x
   - Trazos más gruesos
   - Mayor espaciado entre caracteres
   - Contraformas más abiertas

2. Text (9-13 puntos):
   - Proporciones balanceadas
   - Espaciado óptimo para texto corrido
   - Contraste moderado en los trazos

3. Subhead (14-24 puntos):
   - Mayor contraste
   - Espaciado más ajustado
   - Detalles más refinados

4. Display (25-72 puntos):
   - Máximo contraste
   - Detalles más delicados
   - Espaciado muy ajustado

5. Poster (más de 72 puntos):
   - Ajustes extremos para visibilidad a distancia
   - Modificaciones específicas para gran formato

## Features OpenType

Las características OpenType disponibles en una fuente pueden consultarse mediante herramientas como `otfinfo`.

```bash
otfinfo -f MinionPro-Regular.otf
```

Algunas características comunes incluyen:

- Liga: Ligaduras estándar
- Dlig: Ligaduras discrecionales
- Onum: Números de estilo antiguo
- Pnum: Números proporcionales
- Smcp: Versalitas
- Kern: Kerning

## Implementación en LaTeX

La implementación en LaTeX se realiza principalmente a través del paquete `fontspec`. Ejemplo básico de configuración:

```latex
\usepackage{fontspec}
\setmainfont{Minion Pro}[
    Numbers={OldStyle,Proportional},
    Ligatures=TeX,
    Scale=1.2,
    SizeFeatures={
        {Size={-8.4},Font=* Capt},
        {Size={8.41-13.0},Font=*},
        {Size={13.01-21},Font=* Subh},
        {Size={21.01-},Font=* Disp}
    },
    UprightFont=*-Regular,
    ItalicFont=*-It,
    BoldFont=*-Semibold,
    BoldItalicFont=*-SemiboldIt
]
```

Configuración de estilos para títulos:

```latex
\titleformat{\chapter}[display]
    {\Large}
    {\vspace{-2.5cm}\centering{\textsc{
    \MakeLowercase\chaptertitlename}}~\thechapter}
    {1.5cm}
    {\filright\LARGE}
    []
```

## Casos prácticos

### Ejemplo 1: documento académico
```latex
\documentclass[12pt]{book}
\usepackage{fontspec}
\usepackage{microtype}

% Configuración de la fuente principal
\setmainfont{Minion Pro}[
    Numbers={OldStyle,Proportional}
]

% Configuración para títulos
\setsansfont{Myriad Pro}[
    Numbers={Lining,Proportional}
]
```

### Ejemplo 2: producción editorial
```latex
\documentclass[11pt]{memoir}
\usepackage{fontspec}
\usepackage{microtype}

% Configuración avanzada de fuentes
\setmainfont{Minion Pro}[
    Numbers={OldStyle,Proportional},
    SizeFeatures={
        {Size={-8.4},Font=* Capt},
        {Size={8.41-13.0},Font=*},
        {Size={13.01-21},Font=* Subh},
        {Size={21.01-},Font=* Disp}
    }
]
```

## Conclusión

La combinación de OpenType y LaTeX ofrece un control tipográfico superior al disponible en software tradicional de autoedición. Las características avanzadas de OpenType, junto con la flexibilidad de LaTeX, permiten:

- Control preciso sobre las variaciones ópticas
- Implementación automática de características tipográficas
- Consistencia en documentos extensos
- Mayor calidad tipográfica final

## Referencias y recursos adicionales

1. Documentación:
   - Manual de fontspec
   - Documentación de OpenType
   - Guías de XeTeX y LuaTeX

2. Herramientas:
   - otfinfo
   - fontforge
   - LaTeX Font Catalogue

3. Comunidades:
   - TeX StackExchange
   - Typography StackExchange
   - Foros de LaTeX

## Glosario

- **DTP**: Desktop Publishing (Autoedición)
- **Features**: Características especiales de una fuente OpenType
- **NFSS**: New Font Selection Scheme
- **Ganancia de punto**: Incremento en el tamaño del punto impreso respecto al original

Este artículo proporciona una base introductoria sólida para comprender y utilizar las características OpenType en LaTeX.