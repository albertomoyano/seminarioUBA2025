# ¿Qué es una clave SSH y para qué se utiliza en GitHub?

## Introducción

Cuando trabajamos con repositorios remotos, como los de GitHub, necesitamos una forma segura de autenticar nuestra identidad. Una de las maneras más comunes de hacerlo es mediante **claves SSH**. Este trabajo práctico tiene como objetivo explicar qué es una clave SSH, cómo funciona y cuál es su contexto de uso en GitHub.

---

## ¿Qué es una clave SSH?

SSH significa **Secure Shell**, un protocolo de red que permite la conexión segura entre computadoras a través de redes inseguras. Las **claves SSH** son un par de archivos criptográficos que se utilizan para autenticarse sin necesidad de ingresar una contraseña cada vez.

El par de claves se compone de:

- **Clave privada** (`id_rsa`): se guarda localmente y **nunca** debe compartirse.
- **Clave pública** (`id_rsa.pub`): puede compartirse con servidores o servicios como GitHub.

---

## ¿Cómo funciona?

Cuando queremos conectarnos a un servidor (por ejemplo, GitHub), este verifica si la clave pública que le dimos previamente coincide con la clave privada que estamos usando desde nuestra máquina. Si hay coincidencia, nos permite acceder sin pedir usuario ni contraseña.

Este proceso es seguro porque:

- Las claves están cifradas.
- El servidor nunca recibe la clave privada.
- Solo se puede autenticar quien posea la clave privada correspondiente a la clave pública registrada.

---

## ¿Por qué usar claves SSH en GitHub?

GitHub permite autenticarse de dos formas principales:

1. Mediante HTTPS (usando usuario y contraseña o token personal).
2. Mediante SSH (con claves SSH).

Las claves SSH ofrecen ventajas como:

- **Mayor seguridad**: no hay necesidad de compartir contraseñas.
- **Comodidad**: no hace falta escribir usuario/contraseña cada vez que se hace `git push` o `git pull`.
- **Automatización**: ideales para scripts, servidores y CI/CD sin intervención humana.

---

## Cómo se usan las claves SSH en GitHub

### 1. Generar una clave SSH (si aún no tenés una)

```bash
ssh-keygen -t rsa -b 4096 -C "tu-email@ejemplo.com"
```

Esto crea los archivos `id_rsa` y `id_rsa.pub` en tu carpeta `~/.ssh/`.

### 2. Agregar tu clave pública a GitHub

1. Copiá el contenido de `id_rsa.pub`:

   ```bash
   cat ~/.ssh/id_rsa.pub
   ```

2. En GitHub, andá a **Settings > SSH and GPG keys**.
3. Hacé clic en **New SSH key**, pegá la clave y guardá.

### 3. Probar la conexión

```bash
ssh -T git@github.com
```

Deberías recibir un mensaje de bienvenida de GitHub si todo está configurado correctamente.

---

## Conclusión

Las claves SSH son una herramienta esencial para trabajar de forma segura y eficiente con GitHub. Permiten autenticarte sin contraseñas, simplifican el flujo de trabajo y son altamente recomendadas para cualquier desarrollador que use Git.

