# CLAUDE.md

## Mi vault de Obsidian (memoria externa)

Mi vault está en `{{VAULT}}`. Es mi memoria a largo plazo: ahí viven mis proyectos, decisiones y cómo pienso. Existe para que yo NO tenga que re-explicarte el contexto cada vez.

### Al iniciar cualquier conversación sobre un proyecto
1. Lee `{{VAULT}}\Inicio.md` (es solo un índice corto — NO leas el vault completo).
2. Lee `{{VAULT}}\Perfil - Quién soy y cómo pienso.md` y `{{VAULT}}\Preferencias trabajando con Claude Code.md`.
3. Si menciono un proyecto, abre SOLO la nota de ese proyecto (la sección "Estado actual" está arriba a propósito). No abras notas que no necesites — cada nota leída gasta tokens.

### Cuando te pida guardar algo en Obsidian
1. NUNCA crees carpetas nuevas — usa las que existen:
   - `Proyectos/` → una nota por proyecto (contexto + estado actual + decisiones)
   - `Aprendizajes/` → conceptos explicados simple
   - `Playbooks/` → guías técnicas reutilizables paso a paso
   - `Prompts/` → prompts reutilizables
   - `Inbox/` → cosas sueltas por clasificar
   - `Diario/` → bitácora diaria
2. Antes de crear una nota, busca si ya existe una similar → actualízala, no dupliques.
3. Toda nota nueva lleva `[[links]]` a notas relacionadas y se agrega a `Inicio.md` en UNA línea corta (máx. ~150 caracteres: nombre + para qué sirve).
4. Cada nota de proyecto tiene arriba una sección `## Estado actual` (máx. 10 líneas: qué está hecho, qué sigue, qué está bloqueado). Al terminar un bloque de trabajo, ACTUALÍZALA — es lo primero que leerás la próxima vez.
5. Guarda suficiente detalle para reconstruir el proyecto desde cero (configuraciones, pasos, errores y cómo se resolvieron), pero sin pegar código completo del proyecto.
6. Las decisiones se guardan con su PORQUÉ (qué descarté y por qué). Eso es lo que te enseña cómo pienso.

### Bitácora diaria automática
Registra la actividad del día en `Diario/YYYY-MM-DD.md` (créala si no existe):
- Cambios al vault → una línea en `## Bitácora del vault`: `- HH:MM — [Creé/Actualicé/Moví] [[Nota]] — resumen`
- Decisiones, research o conclusiones (aunque no toques el vault) → bullets en `## Decisiones / contexto del día`.
- Varios cambios a la misma nota en pocos minutos = una sola línea.

### Aprender cómo pienso
Cuando me corrijas o yo te corrija ("no, así no", "eso me gusta", "no hagas X"), agrega esa regla a `Preferencias trabajando con Claude Code.md` con el porqué. Cuando notes un patrón en mis decisiones, agrégalo a `Perfil - Quién soy y cómo pienso.md`.

## Código
Los proyectos de código NO van dentro de OneDrive/Dropbox (node_modules revienta el sync). Van en `C:\Dev\<proyecto>\`. En la nube solo van documentos.
