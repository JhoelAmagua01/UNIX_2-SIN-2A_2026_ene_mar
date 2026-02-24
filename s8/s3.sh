#!/bin/bash
echo "=== INFORMACIÓN DEL SISTEMA ==="
printf "Usuario actual: %s\n" "$USER"
printf "Directorio actual: %s\n" "$(pwd)"
echo "Cambiando al directorio HOME..."
cd ~ || exit 1
printf "Nuevo directorio: %s\n" "$(pwd)"
echo "Información del sistema:"
uname -a