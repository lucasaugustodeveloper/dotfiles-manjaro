#!/usr/bin/env bash

set -e

BACKUP_DIR="$HOME/Downloads/Backup/VSCodium"
CONFIG_DIR="$HOME/.config/VSCodium"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_FILE="$BACKUP_DIR/vscodium-$DATE.tar.gz"
EXTENSIONS_FILE="$BACKUP_DIR/extensions.txt"

mkdir -p "$BACKUP_DIR"

echo "==> Fazendo backup das configurações do VSCodium..."

if [ -d "$CONFIG_DIR" ]; then
    tar -czf "$BACKUP_FILE" -C "$HOME/.config" VSCodium
    echo "Configurações salvas em:"
    echo "$BACKUP_FILE"
else
    echo "AVISO: diretório de configuração não encontrado:"
    echo "$CONFIG_DIR"
fi

echo
echo "==> Salvando lista de extensões..."

if command -v codium &> /dev/null; then
    codium --list-extensions > "$EXTENSIONS_FILE"
    echo "Extensões salvas em:"
    echo "$EXTENSIONS_FILE"
else
    echo "AVISO: comando 'codium' não encontrado."
fi

echo
echo "========================================"
echo "Backup do VSCodium concluído!"
echo "========================================"
echo
echo "Backup:"
echo "$BACKUP_FILE"
echo
echo "Extensões:"
echo "$EXTENSIONS_FILE"

