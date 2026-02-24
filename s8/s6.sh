#!/bin/bash
FECHA=$(date +%F)
ORIGEN="$HOME/documentos"
DESTINO="$HOME/backups"
mkdir-p"$DESTINO"
echo"Buscando archivos modificados en las últimas 24 horas..."
ARCHIVOS=$(find "$ORIGEN" -type f -mtime -1)
if [ -z"$ARCHIVOS" ]; then
echo"No hay archivos recientes."
exit0
fi
echo"Creando archivo temporal de lista..."
echo"$ARCHIVOS" > /tmp/lista_backup.txt
echo"Generando backup comprimido..."
tar -czf"$DESTINO/backup-$FECHA.tar.gz"-T /tmp/lista_backup.txt
chmod600"$DESTINO/backup-$FECHA.tar.gz"
echo"Creando enlace simbólico al último backup..."
ln-sf"$DESTINO/backup-$FECHA.tar.gz""$DESTINO/ultimo_backup"
echo"Backup completado."