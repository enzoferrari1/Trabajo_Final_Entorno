#! /usr/bin/bash
  
# Indicar la palabra más corta, más larga y el promedio de longitud
# Unico argumento: Ruta al archivo a analizar
# Antes de comenzar con el código, chequear que haya un único argumento, y que sea una ruta a un archivo regular
# Para remover puntos, comas y otras variantes, usamos el comando tr
[ ! $# -eq 1  ] && echo "Se debe ingresar un solo argumento" && exit 1
[ ! -f $1 ] && echo "El archivo debe ser un archivo regular" && exit 2
[ ! -s $1 ] && echo "El archivo está vacío" && exit 3
LARGA=''
CORTA=''
CANT_LETRAS=0
CANT_PAL=0
for A in $(cat $1);
do
	PALABRA=$(echo $A | tr -d ',.;:¿?¡!()_') # todos los carácteres que no sean alfanuméricos y el guión seran borrados
	[ -z $PALABRA ] && continue
	[ -z $CORTA ] && CORTA=$PALABRA #La primera palabra se usará para comparar la palabra más corta
	[ ${#PALABRA} -le ${#CORTA} ] && CORTA=$PALABRA
	[ ${#PALABRA} -ge ${#LARGA} ] && LARGA=$PALABRA
	CANT_LETRAS=$(( CANT_LETRAS + ${#PALABRA} ))
	CANT_PAL=$(( CANT_PAL + 1 ))
done
echo "La palabra más larga del texto es: \"$LARGA\""
echo "La palabra más corta del texto es: \"$CORTA\""
PROMEDIO=$(( CANT_LETRAS / CANT_PAL ))
echo "El promedio de longitud de las palabras es de $PROMEDIO letras"                              
