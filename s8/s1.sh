#!/bin/bash
# 1. Definición del intérprete (Shebang)
# 2. Captura de entrada del usuario

read -p "Ingrese el usuario a monitorear: " USUARIO

# 3. Lógica de filtrado y visualización
ps -u $USUARIO -o pid,%mem,command | sort -nk 2 | tail -n 5