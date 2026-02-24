#!/bin/bash
 
while true
do
    printf "MiShell> "
    read comando argumento
 
    case $comando in
        salir)
            echo "Saliendo..."
            exit 0
            ;;
        pwd)
            pwd
            ;;
        cd)
            cd "$argumento" || echo "Directorio no válido"
            ;;
        listar)
            ls -l
            ;;
        *)
            echo "Comando no reconocido"
            ;;
    esac
done