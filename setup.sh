#!/usr/bin/env bash
# Instala el vault del segundo cerebro y conecta Claude Code (Mac y Linux). Ejecutar: bash setup.sh
set -euo pipefail
KIT="$(cd "$(dirname "$0")" && pwd)"

DEFAULT="$HOME/Documents/Obsidian Vault"
read -r -p "¿Dónde crear el vault? (Enter = $DEFAULT) " DEST
DEST="${DEST:-$DEFAULT}"

if [ -d "$DEST" ] && [ -n "$(ls -A "$DEST" 2>/dev/null)" ]; then
  echo "La carpeta '$DEST' ya tiene contenido. Elige otra o vacíala."
  exit 1
fi

mkdir -p "$DEST"
cp -R "$KIT/Vault/." "$DEST/"
for d in Aprendizajes Playbooks Inbox; do mkdir -p "$DEST/$d"; done

mkdir -p "$HOME/.claude"
TARGET="$HOME/.claude/CLAUDE.md"
CONTENT="$(sed "s|{{VAULT}}|$DEST|g" "$KIT/CLAUDE.template.md")"

if [ -f "$TARGET" ]; then
  cp "$TARGET" "$TARGET.bak"
  printf '\n\n%s\n' "$CONTENT" >> "$TARGET"
  echo "Ya tenías un CLAUDE.md: agregué las reglas al final (respaldo en CLAUDE.md.bak)."
else
  printf '%s\n' "$CONTENT" > "$TARGET"
fi

echo
echo "Listo."
echo "1. Abre Obsidian > 'Open folder as vault' > $DEST"
echo "2. Abre Claude Code en cualquier carpeta y pega el prompt de 'Prompts/PROMPT - Entrevista inicial.md'"
case "$DEST" in *iCloud*|*Dropbox*|*OneDrive*) echo "AVISO: no pongas proyectos de código (node_modules) dentro de esa carpeta sincronizada.";; esac
