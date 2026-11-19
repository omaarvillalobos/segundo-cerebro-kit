# Instala el vault starter y conecta Claude Code. Ejecutar: powershell -ExecutionPolicy Bypass -File setup.ps1
$ErrorActionPreference = 'Stop'
$kit = $PSScriptRoot

$default = Join-Path $HOME 'Documents\Obsidian Vault'
$dest = Read-Host "Donde crear el vault? (Enter = $default)"
if (-not $dest) { $dest = $default }

if ((Test-Path $dest) -and (Get-ChildItem $dest -Force | Select-Object -First 1)) {
    Write-Host "La carpeta '$dest' ya tiene contenido. Elige otra o vaciala." -ForegroundColor Red
    exit 1
}

New-Item -ItemType Directory -Force $dest | Out-Null
Copy-Item "$kit\Vault\*" $dest -Recurse -Force
foreach ($d in 'Aprendizajes','Playbooks','Inbox') { New-Item -ItemType Directory -Force (Join-Path $dest $d) | Out-Null }

$claudeDir = Join-Path $HOME '.claude'
New-Item -ItemType Directory -Force $claudeDir | Out-Null
$target = Join-Path $claudeDir 'CLAUDE.md'
$content = (Get-Content "$kit\CLAUDE.template.md" -Raw -Encoding UTF8).Replace('{{VAULT}}', $dest)

if (Test-Path $target) {
    Copy-Item $target "$target.bak" -Force
    Add-Content $target "`n`n$content" -Encoding UTF8
    Write-Host "Ya tenias un CLAUDE.md: agregue las reglas al final (respaldo en CLAUDE.md.bak)." -ForegroundColor Yellow
} else {
    Set-Content $target $content -Encoding UTF8
}

Write-Host "`nListo." -ForegroundColor Green
Write-Host "1. Abre Obsidian > 'Open folder as vault' > $dest"
Write-Host "2. Abre Claude Code en cualquier carpeta y pega el prompt de 'Prompts/PROMPT - Entrevista inicial.md'"
if ($dest -match 'OneDrive|Dropbox') { Write-Host "AVISO: no pongas proyectos de codigo (node_modules) dentro de esa carpeta sincronizada." -ForegroundColor Yellow }
