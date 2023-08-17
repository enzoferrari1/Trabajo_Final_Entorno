[![es](https://img.shields.io/badge/lang-es-aquamarine.svg)](https://github.com/enzoferrari1/Trabajo_Final_Entorno/blob/master/README.md)

# Project - Entorno de Programación
Final project for the subject Entorno de Programación within the Tecnicatura Universitaria en Inteligencia Artificial, FCEIA.

## Description
This project focuses on the use of bash, git, and Docker containers.

### Contents
This program allows the user to analyze a text by utilizing the following functionalities:

statsWords.sh: Statistical indicator of word length.
statsUsageWords.sh: Statistical indicator of word usage.
findNames.sh: Proper names identifier.
statsSentences.sh: Statistical indicator of sentence length.
blankLinesCounter.sh: Blank lines counter.

## Instructions
To use the program, you need to run the image while mounting the file you want to analyze inside the container at the path home/TPEntorno/trabajo.txt using the docker run command with the -v option:
```
docker run -v ruta-texto home/TPEntorno/trabajo.txt imagen
```
