# Seminario: Introducción a la producción editorial de libros académicos y científicos utilizando lenguajes de marcas

## Fundamentación

En las últimas décadas, los avances tecnológicos, junto con la expansión del acceso a internet y herramientas digitales, han transformado profundamente el panorama editorial. Uno de los desarrollos clave en este proceso es la edición ramificada, una metodología que permite crear y gestionar contenidos de manera eficiente, adaptándolos a múltiples formatos a partir de una única fuente. Este enfoque es esencial en un contexto donde las publicaciones digitales son cada vez más variadas y requieren estar disponibles en formatos como PDF, ePub, HTML, entre otros.

La edición ramificada tiene sus raíces en la necesidad de simplificar la producción de contenido, asegurando consistencia y calidad en diferentes plataformas sin duplicar esfuerzos. Desde sus comienzos en los flujos de trabajo tradicionales de edición, ha evolucionado con el uso de lenguajes de marcado como Markdown y LaTeX, que permiten estructurar el contenido de manera clara y flexible. Al mismo tiempo, herramientas como Git han facilitado el control de versiones y la colaboración en proyectos editoriales, permitiendo que múltiples autores trabajen simultáneamente sin perder el control sobre los cambios.

El futuro de la edición ramificada promete aún más avances, con la posibilidad de automatizar procesos de conversión de formato y la integración de inteligencia artificial para optimizar la creación y distribución de contenido. Al dominar estas herramientas, los profesionales del ámbito editorial estarán mejor preparados para enfrentar las demandas de un mercado en constante evolución.

Este seminario tiene como objetivo ofrecer una formación práctica y actualizada sobre la edición ramificada, enfocándose en el uso de lenguajes de marcado, el control de versiones y herramientas abiertas que permiten a los participantes producir y gestionar contenido de manera autónoma. Los asistentes aprenderán a crear flujos de trabajo eficientes que aseguren la calidad del contenido en todos los formatos requeridos.

Además, es fundamental destacar que todo el software utilizado en este curso sigue la filosofía del código abierto, lo que garantiza a los participantes independencia de cualquier software propietario, ofreciéndoles mayor libertad para desarrollar sus proyectos con flexibilidad y sostenibilidad a largo plazo.

## Objetivos del seminario

- **Comprender** los conceptos básicos de la edición ramificada.
- **Explorar** diversas herramientas de marcado como Markdown y LaTeX.
- **Aprender** a usar sistemas de control de versiones con Git para gestionar proyectos de documentación.
- **Utilizar** editores de código abierto como **Notepad Next** y **TeXstudio** para optimizar el proceso de edición.
- **Implementar** flujos de trabajo que permitan generar salidas en PDF, ePub y HTML desde una única fuente.
- **Introducir** el uso de Pandoc como herramienta de conversión de documentos.
- **Manejar** gestores bibliográficos.
- **Incorporar** metadatos en los documentos para mejorar la organización y búsqueda de la información.

## Público objetivo

Este seminario está dirigido a:

- Editores
- Editoriales universitarias
- Estudiantes de la carrera de edición
- Trabajadores del rubro editorial

---

## **Módulo 1: Introducción y herramientas esenciales**

### **Introducción a GitHub y su uso en el seminario**
- Creación de una cuenta en **GitHub**.
- Uso del área de discusión para consultas y debates.
- Normas de participación en **GitHub Discussions**.
- Flujo de trabajo en GitHub: repositorios, commits y ramas.
- Subida y mantenimiento de proyectos en GitHub.

### Instalación del software
  - **[Oracle Virtual Machine](https://www.virtualbox.org/)**
  - **[Linux Mint](https://linuxmint.com/)**
  - **[Git](https://git-scm.com/)**
  - **[Pandoc](https://pandoc.org/)**
  - **[TeX Live](https://www.tug.org/texlive/)**
  - **[Notepad Next](https://github.com/dail8859/NotepadNext)**
  - **[TeXstudio](https://www.texstudio.org/)**
  - **[JabRef](https://www.jabref.org/)**
  - **[gbTeXpublisher](https://github.com/albertomoyano/gbtexpublisher)**
  
### **Introducción a los lenguajes de marcas y elección de software**
- ¿Qué es un lenguaje de marcas? Diferencias con lenguajes de programación.
- Aplicaciones y ventajas de Markdown y LaTeX.

### **Markdown – Sintaxis básica y primeros pasos**
- Sintaxis de Markdown: encabezados, negritas, itálicas, listas.
- Imágenes, enlaces y bloques de código.
- Práctica: escribir un documento utilizando marcas.

### **Instalación y primeros pasos en LaTeX con TeXstudio**
- Configuración de **TeXstudio** y compiladores.
- Creación del primer documento en LaTeX.
- Estructura básica (`\documentclass`, `\begin{document}`, `\end{document}`).
- Manejo del visor de PDF integrado en TeXstudio.

---

## **Módulo 2: Fundamentos de LaTeX**

### **Vista general de los paquetes más utilizados**
- `fontspec`, `microtype`, `siunitx`, `nccfoots`, `booktabs`, `bchart` y `footmisc` entre otros.

### **Formato de texto y estructura de documentos**
- Secciones (`\section`, `\subsection`) y numeración automática.
- Fuentes y estilos tipográficos.
- Listas (`paralist`, `enumerate`) y notas al pie.

### **Imágenes, gráficos y figuras**
- Uso de `\includegraphics` con `graphicx` y `svg`.
- Entorno `figure` e `imagen` y configuración de tamaños.

### **Cuadros, tablas y bibliografía**
- Lógica y confección de cuadros y tablas.
- Introducción a la gestión bibliografía con `biblatex`.
- Estilos de citas (`numérico`, `autor-año` y `pie de página`).

---

## **Módulo 3: Documentos avanzados y personalización**

### **Estilos de documentos y personalización avanzada**
- Tipo de documentos: la clase `book`.
- Uso de `titlesec` para personalizar títulos.
- Márgenes con `geometry`.

### **Referencias y automatización**
- Referencias cruzadas (`\label`, `\ref`).
- Uso de `hyperref` para hipervínculos.
- Creación de índices y tablas de contenido avanzadas.

### **Trabajo colaborativo y automatización de compilación**
-  `latexmk` para compilaciones automáticas.
- Introducción a **LuaLaTeX**.

---

## **Módulo 4: Proyectos reales y control de resultados**

### **Documentos científicos y libros en LaTeX**
- Plantillas para artículos científicos.
- Estructura de libros con la clase `book`.
- Bibliografía con biblatex.

### **Creación de libros con LaTeX**
- Organización de capítulos.
- Generación de glosarios y acrónimos.
- Exportación a diferentes formatos (PDF para pantalla, PDF para imprenta, ePub en imágenes, ePub en HTML y sitio estático en HTML5).
- Optimización de metadatos para las diferentes salidas.

### **Resolución de errores y optimización**
- Depuración de errores en LaTeX con logs.
- Mejoras de rendimiento y optimización de código.
- Buenas prácticas para documentos largos.

### **Artes gráficas para editores**
- Principios básicos de control
  - Ganancia de punto
  - Relación tinta-agua
  - Relación toner-fusor 
- Preimpresión
  - Modelo CTF
  - Modelo CTP
- Impresión
  - Sistema seco
  - Sistema offset
  - Sistema digital

### **Proyecto final y evaluación**
- Presentación de documentos finales en LaTeX.
- Revisión de calidad y optimización.
- Sesión de preguntas y respuestas.

---

Al finalizar el seminario, los participantes deberán cumplir con los siguientes requisitos para obtener su certificación:

**Participación activa:** Los participantes deberán haber mostrado una participación activa en las discusiones dentro del repositorio de Git del seminario, específicamente en los _issues_ designados para debates y consultas. Esta participación incluirá contribuir con ideas, resolver dudas, y colaborar con sus compañeros en la resolución de problemas planteados durante el curso.

**Producción de múltiples salidas:** Cada participante deberá producir la salida en tres formatos diferentes (PDF, ePub y HTML) de un libro de ejercicios proporcionado durante el seminario. Este proyecto final deberá demostrar el dominio de las herramientas y técnicas aprendidas, asegurando que la fuente origen se transforma correctamente en cada uno de los formatos de salida, manteniendo la coherencia y calidad del contenido.

## Conclusión

Este seminario proporcionará a los participantes las habilidades y conocimientos necesarios para implementar una estrategia de edición ramificada en sus proyectos de documentación. Al finalizar, estarán equipados para producir contenido en múltiples formatos de manera eficiente y organizada, utilizando herramientas y lenguajes de código abierto que aseguran independencia y flexibilidad en sus proyectos editoriales.

Además, los participantes habrán demostrado su capacidad para colaborar y resolver problemas en un entorno de control de versiones, produciendo contenido de alta calidad en varios formatos y participando activamente en discusiones técnicas y de contenido. Esta experiencia práctica les permitirá aplicar lo aprendido en sus futuros proyectos editoriales, asegurando que puedan adaptarse a diversas demandas del mercado con confianza y habilidad.