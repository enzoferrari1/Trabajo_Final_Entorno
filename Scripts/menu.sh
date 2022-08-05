#!/usr/bin/bash

# Argumento 1: directorio del archivo a analizar
[ ! $# -eq 1 ] && echo "Se debe ingresar un solo archivo" && exit 1
[ ! -f $1 ] && echo "El archivo debe ser regular" && exit 2

select archivo in statsWords.sh statsUsageWords.sh findNames.sh statsSentences.sh blankLinesCounter.sh
do
	bash $archivo $1
done

