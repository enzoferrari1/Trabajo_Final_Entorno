#! /usr/bin/bash

#Argumento 1 : ruta al archivo a analizar
# tiene que haber un solo argumento, la ruta debe referir a un archivo regular y el archivo debe ser no vacío

[ ! $# -eq 1 ] && echo "Debe haber un solo argumento" && exit 1
[ ! -f $1 ] && echo "El argumento debe ser un archivo regular" && exit 2
[ ! -s $1 ] && echo "El archivo debe ser no vacío" && exit 3
echo "Cantidad de líneas en blanco : $(cat $1 | egrep -cvE '[^[:blank:]]')"
# c: imprime la cantidad de lineas matcheadas, v: selecciona las lineas que no matchean el patron
