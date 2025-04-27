# Comandos más comunes usados en un libro utilizando LaTeX

## Introducción

LaTeX es un sistema de preparación de documentos ideal para la creación de libros, ya que permite una estructura jerárquica clara y control preciso sobre el diseño del documento.  
Este trabajo práctico se concentra en el uso de la clase `book` de LaTeX, listando y explicando brevemente los principales comandos y paquetes necesarios para escribir un libro.

## Configuración básica del documento

### Clase de documento
- `\documentclass{book}`  
Define que el documento sigue la estructura de un libro, incluyendo soporte para capítulos (`\chapter{}`), portada, dedicatoria y numeración adecuada.

### Paquetes recomendados
- `\usepackage[margin=3cm]{geometry}`  
Controla los márgenes de la página de forma sencilla.
- `\usepackage[spanish]{babel}`  
Adapta automáticamente el idioma del documento (división de palabras, nombres de capítulos, fechas).
- `\usepackage{caption}`  
Mejora la personalización de los títulos de figuras y tablas.
- `\usepackage{hyperref}`  
Permite crear enlaces internos y externos dentro del documento (por ejemplo, en la tabla de contenidos).
- `\usepackage{csquotes}`  
Facilita el manejo correcto de comillas tipográficas, adaptándolas al idioma configurado.
- `\usepackage[backend=biber]{biblatex}`  
Gestiona la bibliografía de forma moderna y flexible. Requiere especificar un archivo `.bib` externo.

## Estructura del contenido

### Comandos principales
- `\title{Título del libro}`  
Define el título del libro.
- `\author{Nombre del autor}`  
Define el nombre del autor.
- `\date{Fecha}`  
Define la fecha. Se puede dejar vacío (`\date{}`) para no mostrarla.

- `\maketitle`  
Genera automáticamente la portada utilizando el título, autor y fecha.

- `\frontmatter`  
Inicia la parte preliminar del libro (índice, prólogo), numerada en romanos (I, II, III, ...).

- `\tableofcontents`  
Genera el índice automático de contenidos.

- `\mainmatter`  
Inicia el cuerpo principal del libro, comenzando la numeración normal (1, 2, 3, ...).

- `\chapter{Título del capítulo}`  
Crea un nuevo capítulo. En la clase `book`, el uso de capítulos es obligatorio para la correcta división de contenido.

- `\section{Título de la sección}`  
Crea una nueva sección dentro de un capítulo.

- `\subsection{Título de la subsección}`  
Crea una subsección dentro de una sección.

- `\backmatter`  
Inicia la parte final del libro (apéndices, glosario, bibliografía, índices).

## Formato de texto

- `\textbf{texto}`  
Pone el texto en **negrita**.

- `\textit{texto}`  
Pone el texto en *cursiva*.

- `\emph{texto}`  
Pone el texto en el valor complementario al antecesor.

- `\underline{texto}`  
Subraya el texto.

- `\footnote{Texto de la nota}`  
Inserta una nota al pie.

## Inclusión de elementos gráficos

- `\begin{quote}...\end{quote}`  
Crea un entorno para citas.

- `\begin{figure}...\end{figure}`  
Crea un entorno para insertar figuras.

- `\includegraphics[width=\textwidth]{imagen.png}`  
Incluye una imagen. (Requiere el paquete `graphicx`.)

- `\begin{table}...\end{table}`  
Crea un entorno para insertar tablas.

- `\caption{Título de la figura o tabla}`  
Agrega un título a figuras y tablas, mejorado con el paquete `caption`.

## Hipervínculos y referencias

- `\label{etiqueta}`  
Crea una etiqueta para hacer referencia interna.

- `\ref{etiqueta}`  
Hace referencia al número de capítulo, sección, figura o tabla.

- `\url{https://www.ejemplo.com}`  
Inserta un enlace web.

## Citas y bibliografía

- `\enquote{Texto}`  
Crea comillas tipográficas automáticas adaptadas al idioma (proporcionado por `csquotes`).

- `\autocite{clave}`  
Realiza una cita breve basada en la base de datos bibliográfica.

- `\printbibliography`  
Imprime la bibliografía completa en el lugar indicado. Se usa junto con el paquete `biblatex`.

## Conclusión

Utilizando adecuadamente los comandos y paquetes mencionados, es posible componer libros en LaTeX con una estructura profesional, una tipografía cuidada y una navegación interna eficiente.

El dominio de la clase `book` y sus herramientas asociadas representa un paso fundamental en la creación de obras extensas y complejas.
