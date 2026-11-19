# Segundo cerebro con Claude Code y Obsidian

Cada vez que abres un chat nuevo, Claude empieza de cero y tienes que explicarle todo otra vez. Con este kit, todo lo que trabajas con
Claude se guarda en notas de Obsidian, se organiza y se conecta solo. Dices *"sigamos con el proyecto X"* y Claude lee la nota de ese
proyecto y sabe exactamente dónde te quedaste.

Hecho por [Omar Villalobos](https://www.instagram.com/omarvillalobos.ai/) con Claude Code.

## Qué trae

- **Instalador** para Windows (`setup.ps1`) y para Mac (`setup.sh`): te crea tu bóveda y le enseña a Claude cómo usarla.
- **Tu bóveda** lista: `Inicio.md` (el índice que Claude lee primero), tu `Perfil`, tus `Preferencias trabajando con Claude Code`,
  una plantilla de proyecto y un diario.
- **El prompt de entrevista** (`Vault/Prompts/PROMPT - Entrevista inicial.md`): Claude te hace preguntas y con eso arma tu cerebro.
- `CLAUDE.template.md`: las reglas que aprende Claude para leer y escribir tus notas sin gastar de más.

## Instalación (5 minutos)

### 1. Descarga Claude Code

Necesitas una cuenta de Claude. Abre la terminal y pega el comando de tu sistema (son los de la
[documentación oficial](https://code.claude.com/docs/en/setup)):

- **Windows** (abre *PowerShell* desde el menú de inicio):
  ```
  irm https://claude.ai/install.ps1 | iex
  ```
- **Mac** (abre la app *Terminal*):
  ```
  curl -fsSL https://claude.ai/install.sh | bash
  ```

Para revisar que quedó: `claude --version`. La primera vez que escribas `claude`, te pide iniciar sesión con tu cuenta.

### 2. Descarga Obsidian

Es gratis: [obsidian.md](https://obsidian.md). Instálalo como cualquier programa.

### 3. Baja este kit

Arriba en esta página: botón verde **Code** → **Download ZIP**. Descomprímelo donde quieras.

### 4. Corre el instalador

Te pregunta dónde crear tu bóveda (si das Enter, la crea en Documentos).

- **Windows:** abre PowerShell dentro de la carpeta del kit y pega:
  ```
  powershell -ExecutionPolicy Bypass -File setup.ps1
  ```
- **Mac:** abre Terminal dentro de la carpeta del kit y pega:
  ```
  bash setup.sh
  ```

Si ya tenías un `CLAUDE.md`, no se borra: las reglas se agregan al final y queda un respaldo `CLAUDE.md.bak`.

### 5. Ábrela en Obsidian y haz la entrevista

1. En Obsidian: **Open folder as vault** → la carpeta que creó el instalador.
2. Abre Claude Code (`claude` en la terminal) y pega el prompt de `Prompts/PROMPT - Entrevista inicial.md`.
3. Claude te pregunta en qué trabajas y cómo te gusta trabajar, y con eso llena tu Perfil y tus proyectos.

## Uso diario

- Chat nuevo sobre un proyecto: *"Vamos a seguir con [proyecto]"* → Claude ya sabe dónde buscar.
- Al terminar: *"Guarda en Obsidian lo que decidimos"* → actualiza la nota, el Estado actual y el Diario.
- Si Claude hace algo que no te gusta: díselo UNA vez; queda como regla en tus Preferencias.
- Cada par de semanas: *"Revisa Inicio.md y acórtalo"*. Un índice corto es lo que hace que Claude no gaste de más.

## Respaldo

- Pon la bóveda en tu nube personal (iCloud, OneDrive o Dropbox), no en la de la escuela o el trabajo.
- Nunca guardes contraseñas ni llaves en las notas: solo los NOMBRES de las variables.
- Los proyectos de código, fuera de carpetas sincronizadas.

## Lo que no se copia

La estructura se comparte; tu Perfil, tus metas y tus Preferencias se construyen con tu entrevista.

---

¿Quieres la versión completa conectada a tu negocio? Mándame mensaje en [Instagram](https://www.instagram.com/omarvillalobos.ai/).

Licencia MIT.
