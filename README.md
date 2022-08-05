Este programa permite al usuario analizar un texto
Consta de las siguientes funcionalidades:
- statsWords.sh : indicador estadístico de longitud de palabras
- statsUsageWords.sh : Indicador estadístico del uso de palabras
- findNames.sh : Identificador de nombres propios
- statsSentences.sh : Indicador estadístico de longitud de oraciones
- blankLinesCounter.sh : Contador de líneas en blanco

Para usar el programa se debe correr la imagen montando el archivo que queremos analizar dentro del contenedor en la ruta 
home/TPEntorno/trabajo.txt
usando el comando docker run con la opción -v
docker run -v ruta-texto home/TPEntorno/trabajo.txt imagen

