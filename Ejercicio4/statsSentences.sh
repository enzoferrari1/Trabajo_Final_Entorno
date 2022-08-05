#! /usr/bin/bash

# Argumento 1: ruta al archivo a analizar
# Chequear que haya un solo argumento, que la ruta diriga a un archivo y que no sea vacío
[ ! $# -eq 1 ] && echo "Se debe ingresar un único argumento" && exit 1
[ ! -f $1 ] && echo "El archivo no existe" && exit 2
[ ! -s $1 ] && echo "El archivo debe ser no vacío" && exit 3
#cat $1 | tr '.' '\n'
IFS=$'\n'
LARGA=''
CORTA=''
CANT=0
LETRAS=0
for ORAC in $(cat $1 | tr '.' '\n');
do
	[ -z $CORTA ] && CORTA=$ORAC
	[ -z  $(echo $ORAC | tr -d '[[:blank:]]') ] && continue
	L_ORAC=$(echo $ORAC | tr -d '[[:blank:]]' | wc -m)
	L_LARGA=$(echo $LARGA | tr -d '[[:blank:]]' | wc -m)
	L_CORTA=$(echo $CORTA | tr -d '[[:blank:]]' | wc -m)
	[ $L_ORAC -le $L_CORTA ] && [ ! -z $ORAC ] && CORTA=$ORAC
	[ $L_ORAC -ge $L_LARGA ] && LARGA=$ORAC
	CANT=$(( $CANT + 1  ))
	LETRAS=$(( $LETRAS + $L_ORAC ))
done

echo "La oración mas corta es de $L_CORTA carácteres, dicha oración es:  $CORTA"
echo "La oración mas larga es de $L_LARGA carácteres, dicha oración es:  $LARGA"
echo "El promedio de longitud de las oraciones es de $((LETRAS / CANT)) letras."

