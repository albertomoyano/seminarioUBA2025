# Modelos de Referencia en `biblatex` con ejemplos de comandos

El paquete `biblatex` en LaTeX ofrece distintos estilos de citación adaptables a las convenciones académicas de diversas disciplinas. En este trabajo se analizan tres estilos ampliamente utilizados: **numérico**, **autor-año** y **nota a pie de página**. Para cada uno se presentan ejemplos con los principales comandos de citación.

---

## 1. Estilo Numérico (`numeric`)

Este modelo presenta las citas como números entre corchetes. Es el formato usual en ingeniería, matemáticas y ciencias naturales.

### Configuración mínima

```latex
\usepackage[style=numeric]{biblatex}
\addbibresource{bibliografia.bib}
```

### Ejemplos en texto

```latex
La teoría fue formulada en [\cite{einstein1905}].

Según \textcite{einstein1905}, la relatividad especial fue revolucionaria.

Algunas referencias relevantes son \parencite{einstein1905}.
```

### Comandos comunes

| Comando                 | Resultado aproximado         | Uso                          |
|------------------------|------------------------------|------------------------------|
| `\cite{clave}`         | [1]                          | Cita básica entre corchetes |
| `\parencite{clave}`    | [1]                          | Igual que `\cite`            |
| `\textcite{clave}`     | Einstein [1]                 | Nombre del autor + número   |
| `\footcite{clave}`     | [1] en nota al pie           | Cita en nota al pie         |
| `\cite*{clave}`        | 1                            | Sin corchetes (opcional)    |

---

## 2. Estilo autor-año (`authoryear`)

Cita por autor y año, es común para ciencias sociales y humanísticas.

### Configuración mínima

```latex
\usepackage[style=authoryear]{biblatex}
\addbibresource{bibliografia.bib}
```

### Ejemplos en texto

```latex
La teoría fue publicada en \parencite{einstein1905}.

\textcite{einstein1905} sostiene que el tiempo es relativo.

En la nota al pie: \footcite{einstein1905}.
```

### Comandos comunes

| Comando                  | Resultado aproximado         | Uso                                       |
|-------------------------|------------------------------|-------------------------------------------|
| `\cite{clave}`          | (Einstein 1905)              | Cita básica entre paréntesis             |
| `\parencite{clave}`     | (Einstein 1905)              | Igual que `\cite`                         |
| `\textcite{clave}`      | Einstein (1905)              | Autor en el texto, año entre paréntesis  |
| `\footcite{clave}`      | Nota al pie con cita         | Cita completa en nota al pie             |
| `\cite*{clave}`         | Einstein 1905                | Sin paréntesis                            |
| `\smartcite{clave}`     | (Einstein 1905)              | Selección contextual                     |
| `\citeauthor{clave}`    | Einstein                     | Solo el autor                            |
| `\citeyear{clave}`      | 1905                         | Solo el año                              |
| `\citeyearpar{clave}`   | (1905)                       | Año entre paréntesis                     |

---

## 3. Estilo Nota a Pie de Página (`verbose-note`)

Las referencias se insertan como notas al pie con datos completos. Común en historia, filosofía, derecho, etc.

### Configuración mínima

```latex
\usepackage[style=verbose-note]{biblatex}
\addbibresource{bibliografia.bib}
```

### Ejemplos en texto

```latex
La teoría fue presentada en un contexto histórico único.\footcite{einstein1905}

\textcite{einstein1905} introdujo conceptos fundamentales en física.

Como se discute en \autocite{einstein1905}, el espacio-tiempo no es absoluto.
```

### Comandos comunes

| Comando                   | Resultado aproximado                | Uso                                         |
|--------------------------|-------------------------------------|---------------------------------------------|
| `\footcite{clave}`       | Nota al pie con cita completa       | Cita detallada en nota                     |
| `\footcitetext{clave}`   | Texto de nota sin número            | Para citas sin marcar número               |
| `\textcite{clave}`       | Einstein¹                           | Autor en texto, referencia en nota         |
| `\autocite{clave}`       | Nota al pie o paréntesis, según estilo | Cita automática según contexto         |
| `\autocite*{clave}`      | Solo datos sin autor                | Variante reducida                          |

---

## Entrada en `.bib` de ejemplo

```bibtex
@book{einstein1905,
  author    = {Albert Einstein},
  title     = {Zur Elektrodynamik bewegter Körper},
  year      = {1905},
  publisher = {Annalen der Physik}
}
```

