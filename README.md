Trabajo Final de la materia Entorno de Programación, de la Tecnicatura Universitaria en Inteligencia Artificial, FCEIA.
Primer cuatrimestre.
Este trabajo se enfoca en el uso de bash, git y contenedores de Docker

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


---------------------------------------------o---------------------------------------------


Final work of the subject Programming Environment, of the University Degree in Artificial Intelligence, FCEIA. First quarter. This work focuses on the use of bash, git and Docker containers

This program allows the user to analyze a text It consists of the following functionalities:

statsWords.sh: word length statistical indicator
statsUsageWords.sh: Word usage statistical indicator
findNames.sh: Proper name identifier
statsSentences.sh: Sentence length statistical indicator
blankLinesCounter.sh: Blank line counter

To use the program you must run the image mounting the file you want to analyze inside the container in the path home/TPEntorno/trabajo.txt using the docker run command with the -v option docker run -v text-path home/TPEntorno/trabajo.txt image
