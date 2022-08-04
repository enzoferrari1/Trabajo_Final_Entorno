#! /usr/bin/bash

# Argumento 1: ruta del archivo a analizar.
# Debe ser un solo argumento, no debe ser vacío y debe ser un directorio

[ ! $# -eq 1  ] && echo "Se debe ingresar un solo argumento" && exit 1
[ ! -f $1 ] && echo "El archivo debe ser regular" && exit 2
[ ! -s $1 ] && echo "El archivo debe ser no vacío" && exit 3

cat $1 | tr '.,:;()¡!¿?_[[:blank:]]' '\n' | egrep -o '^[A-ZÁÉÍÓÚÑ][a-záéíóúñ]*$' | sort | uniq | cat
