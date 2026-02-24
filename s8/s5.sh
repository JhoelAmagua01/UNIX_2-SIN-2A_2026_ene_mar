#!/bin/bash
 
echo "Analizando archivos .txt mayores a 0 bytes..."
 
ARCHIVOS=$(find . -type f -name "*.txt" ! -size 0)
 
if [ -z "$ARCHIVOS" ]; then
    echo "No se encontraron archivos."
    exit 1
fi
 
for archivo in $ARCHIVOS
do
    echo "================================="
    echo "Archivo: $archivo"
    echo "Número de líneas:"
    wc -l "$archivo"
    echo "Primeras 3 líneas:"
    head -n 3 "$archivo"
done