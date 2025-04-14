# Claves SSH y su uso en GitHub

## ¿Qué es una clave SSH?

Una clave SSH es un par de archivos que permiten autenticarse de forma segura con servidores remotos. El par consiste en:

- **Clave pública**: se comparte con servicios externos.
- **Clave privada**: se guarda de forma segura y nunca se comparte.

SSH significa *Secure Shell*, un protocolo para conexiones cifradas entre computadoras.

---

## ¿Para qué se usan en GitHub?

GitHub permite usar claves SSH para:

- Clonar repositorios privados.
- Hacer *push* a repositorios (subir cambios).
- Autenticarse sin necesidad de ingresar usuario y contraseña cada vez.

En lugar de escribir tu contraseña de GitHub, el sistema usa tu clave privada para demostrar que sos vos.

---

## ¿Cómo se configuran?

### 1. Generar un par de claves:

```bash
ssh-keygen -t ed25519 -C "tu@email.com"
```

Esto genera dos archivos:

- `~/.ssh/id_ed25519` (clave privada)
- `~/.ssh/id_ed25519.pub` (clave pública)

### 2. Agregar la clave pública a GitHub:

- Ir a **GitHub → Settings → SSH and GPG keys**
- Hacer clic en “New SSH key”
- Pegar el contenido de `id_ed25519.pub`

### 3. Probar la conexión:

```bash
ssh -T git@github.com
```

---

## Limitaciones de las claves SSH

Aunque las claves SSH autentican tu conexión con GitHub, **no garantizan que vos seas el autor del contenido**. Solo indican que tenés permiso para hacer cambios en un repositorio.

Esto significa que cualquiera podría:

- Clonar tu repositorio público
- Hacerle cambios
- Publicarlo en otro lugar como si fuera propio

---

# Protección de autoría en repositorios públicos

## Problema: ¿cómo demostrar que sos el autor/editor original?

Cuando tu proyecto (en nuestro caso un libro o revista) está alojado en un repositorio público:

- Cualquiera puede copiarlo
- Cualquiera puede cambiar detalles y publicarlo como propio
- No hay forma automática de demostrar que sos el autor/editor original

---

## Soluciones para demostrar autoría

### ✅ 1. Firmar commits o tags con GPG o SSH

Git permite **firmar digitalmente los commits y etiquetas**, lo que permite a otros verificar que los hiciste vos.

#### Ventajas:

- La firma no puede falsificarse sin tu clave privada (que está almacenada en tu computadora)
- GitHub muestra un sello **Verified** en los commits firmados

#### Cómo hacerlo:

```bash
# Firmar automáticamente cada commit
git config --global commit.gpgsign true

# Asociar tu clave GPG (previamente creada)
git config --global user.signingkey <ID_CLAVE_GPG>
```

También podés firmar una etiqueta específica:

```bash
git tag -s v1.0 -m "Versión final del libro"
```

> Asegurate de subir la clave pública a GitHub.

Más información:  
[https://docs.github.com/en/authentication/managing-commit-signature-verification](https://docs.github.com/en/authentication/managing-commit-signature-verification)

---

### ✅ 2. Generar una huella digital (hash)

Calculá un hash SHA-256 del archivo final (por ejemplo, el PDF del libro):

```bash
sha256sum libro_final.pdf
```

Resultado:

```
a3b34e0123456789abcd9876fedcba1234567890abc123456defabc987654321  libro_final.pdf
```

Podés **publicar esta huella digital** en tu sitio web, redes o en un archivo `hash.txt` en tu repositorio. Cualquier cambio en el contenido cambia también el hash.

---

### ✅ 3. Añadir licencia y nota de autoría

Incluir un archivo `LICENSE` (por ejemplo, CC-BY o GPL) y una sección en el `README.md` que diga algo como:

```markdown
Este libro fue escrito por [Tu Nombre].
Publicado bajo la licencia Creative Commons Attribution 4.0.
La versión oficial está firmada digitalmente con GPG.
```

---

## Resumen

| Acción                           | ¿Protege autoría? | ¿Visible en GitHub? |
|----------------------------------|-------------------|----------------------|
| Usar clave SSH                   | ❌ No              | 🔐 Para conexión     |
| Firmar commits/tags              | ✅ Sí              | ✅ “Verified”         |
| Calcular y publicar hash         | ✅ Sí              | 📁 Manualmente       |
| Agregar licencia y autoría       | ✅ Legalmente      | ✅ Sí                |

---

## Conclusión

Si sos autor/editor y querés demostrar que el contenido de un repositorio público en GitHub fue escrito/editado por vos:

1. **Firmá tus commits y tags**.
2. **Publicá huellas digitales del contenido**.
3. **Incluí una licencia clara y un aviso de autoría**.
4. (Opcional) Guardá una copia de respaldo firmada localmente o en otra red.

Así podés demostrar técnica y legalmente que tu trabajo es el original, incluso si alguien lo copia o modifica.
