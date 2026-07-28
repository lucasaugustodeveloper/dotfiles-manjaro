#!/usr/bin/env bash

set -e

BACKUP_DIR="$HOME/Backup/VSCodium"

echo "========================================"
echo "Restauração do VSCodium"
echo "========================================"
echo

LATEST_BACKUP=$(find "$BACKUP_DIR" -name "vscodium-*.tar.gz" -type f | sort | tail -n 1)
EXTENSIONS_FILE="$BACKUP_DIR/extensions.txt"

if [ -z "$LATEST_BACKUP" ]; then
    echo "ERRO: nenhum backup encontrado em:"
    echo "$BACKUP_DIR"
    exit 1
fi

echo "Backup encontrado:"
echo "$LATEST_BACKUP"
echo

read -rp "Deseja restaurar este backup? [s/N]: " CONFIRM

if [[ ! "$CONFIRM" =~ ^[sS]$ ]]; then
    echo "Restauração cancelada."
    exit 0
fi

echo
echo "==> Restaurando configurações..."

mkdir -p "$HOME/.config"

tar -xzf "$LATEST_BACKUP" -C "$HOME/.config"

echo "Configurações restauradas."

echo
echo "==> Restaurando extensões..."

if command -v codium &> /dev/null && [ -f "$EXTENSIONS_FILE" ]; then

    while IFS= read -r extension; do
        [ -z "$extension" ] && continue

        echo "Instalando: $extension"
        codium --install-extension "$extension" --force

    done < "$EXTENSIONS_FILE"

    echo
    echo "Extensões restauradas."

else
    echo "AVISO: não foi possível restaurar as extensões."
fi

echo
echo "========================================"
echo "Restauração concluída!"
echo "========================================"
echo
echo "Reinicie o VSCodium para aplicar tudo."

