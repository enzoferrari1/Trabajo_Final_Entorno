#! /usr/bin/bash

# Argumento 1: ruta a un archivo, verificar que el argumento es una ruta, que el archivo sea regular, y que no este vacío
[ ! $# -eq 1 ] && echo "Se debe ingresar un solo argumento" && exit 1
[ ! -f $1 ] && echo "La ruta debe dirigir a un archivo" && exit 2
[ ! -s $1 ] && echo "El archivo debe ser no vacío" && exit 3


cat $1 | tr -c '[:alnum:]-' '\n' | sed -E 's/\b.{1,3}\b//g' | sed '/^[[:blank:]]*$/ d ' | sort | uniq -c  | sort -nr | head -10
# Explicación paso a paso de lo que hace cada pipeline
# cat $1: lee el archivo
# tr -c '[:alnum:]-' '\n': reemplaza todos los carácteres no deseados en saltos de linea asi luego puede ser filtrado mediante el comando sed, más adelante se eliminaran las lineas vacías.
# sed -E 's/\b.{1,3}\b//g': -E para usar regex. elimina todas las ocurrencias de palabras con menos de 4 letras.
# sed '/^[[:blank:]]*$/ d ': aquellas lineas que sean blancas seran borradas
# sort: reordena las palabras de manera tal que las mismas palabras esten una al lado de la otra
# uniq -c: uniq omite lineas repetidas, -c agrega un prefijo de la cantidad de veces que se repitió cada línea
# sort -nr: usamos sort nuevamente para: -n reordenar según el valor numérico, -r para invertir el orden, de manera que las palabras más frecuentes aparezcan primero
# head -10: muestra las primeras 10 lineas.
