# Introducción (muy básica) a Markdown

## Objetivo
El objetivo de este informe es comprender el lenguaje de marcado Markdown y sus principales características. A lo largo del mismo, se explorarán las estructuras fundamentales de este sistema de escritura.

## Introducción a Markdown
Markdown es un lenguaje de marcado simple y ligero diseñado para ser fácil de leer y escribir, permitiendo la creación de documentos estructurados con formato sin necesidad de herramientas especializadas. Fue desarrollado por John Gruber y se ha convertido en un estándar en la documentación técnica, blogs y sistemas de control de versiones como GitHub.

## Estructura de Markdown
A continuación, se presentan las principales estructuras y elementos de Markdown:

### Encabezados
Los encabezados en Markdown se crean utilizando el símbolo `#` seguido del texto del título. Existen seis niveles de encabezados:

```markdown
# Encabezado de nivel 1
## Encabezado de nivel 2
### Encabezado de nivel 3
#### Encabezado de nivel 4
##### Encabezado de nivel 5
###### Encabezado de nivel 6
```

# Encabezado de nivel 1
## Encabezado de nivel 2
### Encabezado de nivel 3
#### Encabezado de nivel 4
##### Encabezado de nivel 5
###### Encabezado de nivel 6

### Párrafos y énfasis
Los párrafos en Markdown se crean simplemente escribiendo texto separado por una línea en blanco. Además, es posible aplicar énfasis mediante asteriscos o guiones bajos:

```markdown
Texto en *cursiva* o _cursiva_
Texto en **negrita** o __negrita__
Texto en ***negrita y cursiva***
```

Texto en *cursiva* o _cursiva_
Texto en **negrita** o __negrita__
Texto en ***negrita y cursiva***

### Citas en bloque
Las citas en bloque se crean con el símbolo `>` al inicio de la línea:

```markdown
> Esta es una cita en bloque. Puede extenderse a múltiples líneas.
```

> Esta es una cita en bloque. Puede extenderse a múltiples líneas.

### Listas
Existen listas ordenadas y no ordenadas en Markdown:

- **Listas no ordenadas:**

```markdown
- Elemento 1
- Elemento 2
  - Subelemento 2.1
  - Subelemento 2.2
```

- Elemento 1
- Elemento 2
  - Subelemento 2.1
  - Subelemento 2.2
  
- **Listas ordenadas:**

```markdown
1. Primer elemento
2. Segundo elemento
   1. Sub-elemento 2.1
   2. Sub-elemento 2.2
```

1. Primer elemento
2. Segundo elemento
   1. Sub-elemento 2.1
   2. Sub-elemento 2.2
   
### Cuadros y tablas
Los cuadros y tablas se crean utilizando tuberías (`|`) y guiones (`-`):

```markdown
| Nombre  | Edad |
|---------|------|
| Alberto   | 61   |
| Alejandro     | 39   |
```

| Nombre  | Edad |
|---------|------|
| Alberto   | 61   |
| Alejandro     | 39   |

### Código fuente
Markdown permite insertar fragmentos de código utilizando comillas invertidas (`\``):

```markdown
`Este es un fragmento de código en línea.`
```

`Este es un fragmento de código en línea.`

Para bloques de código más largos:

```markdown
```python
print("Hola, mundo!")
```
```

```python
print("Hola, mundo!")
```

### 7. Enlaces e imágenes
- **Enlaces:**

```markdown
[Texto del enlace](https://www.ejemplo.com)
```

[Texto del enlace](https://www.ejemplo.com)

- **Imágenes:**

```markdown
![Logo de Wikipedia](https://es.wikipedia.org/static/images/icons/wikipedia.png)  
**Figura 1:** Logo de Wikipedia
```

![Logo de Wikipedia](https://es.wikipedia.org/static/images/icons/wikipedia.png)  
**Figura 1:** Logo de Wikipedia

## Conclusión
Markdown es una herramienta poderosa para la creación de documentos estructurados de manera sencilla. Su compatibilidad con múltiples plataformas y su sintaxis intuitiva lo hacen ideal para la documentación técnica y la escritura en general. Mediante este trabajo práctico, los estudiantes podrán familiarizarse con su sintaxis y aplicarlo en diversos contextos.

