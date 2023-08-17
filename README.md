[![en](https://img.shields.io/badge/lang-en-orange.svg)](https://github.com/enzoferrari1/Trabajo_Final_Entorno/blob/master/README.en.md)


# Trabajo Práctico - Entorno de Programación
Trabajo Final de la materia Entorno de Programación, de la Tecnicatura Universitaria en Inteligencia Artificial, FCEIA.

## Descripción
Este trabajo se enfoca en el uso de bash, git y contenedores de Docker

### Contenido
Este programa permite al usuario analizar un texto

Consta de las siguientes funcionalidades:
- statsWords.sh : indicador estadístico de longitud de palabras
- statsUsageWords.sh : Indicador estadístico del uso de palabras
- findNames.sh : Identificador de nombres propios
- statsSentences.sh : Indicador estadístico de longitud de oraciones
- blankLinesCounter.sh : Contador de líneas en blanco

## Instrucciones
Para usar el programa se debe correr la imagen montando el archivo que queremos analizar dentro del contenedor en la ruta 
home/TPEntorno/trabajo.txt
usando el comando docker run con la opción -v

```
docker run -v ruta-texto home/TPEntorno/trabajo.txt imagen
```
