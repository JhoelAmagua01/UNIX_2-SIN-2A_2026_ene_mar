#!/bin/bash

echo "Creando estructura de trabajo..."
mkdir -p trabajo/documentos
cd trabajo || exit1

echo "Creando archivo de prueba..."
echo "Hola mundo" > documentos/archivo1.txt

echo "Copiando archivo..."
cp documentos/archivo1.txt documentos/archivo2.txt

echo "Listando atributos:"
ls -l documentos

echo "Cambiando permisos del archivo2..."
chmod 600 documentos/archivo2.txt

echo "Permisos después del cambio:"
ls -l documentos

echo "Moviendo archivo2..."
mv documentos/archivo2.txt documentos/archivo2_backup.txt

echo "Eliminando archivo1..."
rm documentos/archivo1.txt

echo "Contenido final del directorio:"
ls -l documentos