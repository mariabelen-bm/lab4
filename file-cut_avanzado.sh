#!/bin/bash

# AVANZADO

#Este script va a seleccionar las líneas del fichero o de los ficheros
#que sean múltiplos de nuestro login. Como en mi caso soy el alumno02, tenemos
#que mostrar en pantalla las líneas que vayan de dos en dos.

contador_lineas=0 #contador de todas las líneas
lineas_alumno02=0 #líneas para alumno02

cat $1 | (while read linea
do
  	let contador_lineas=$contador_lineas+1
        if test $(($contador_lineas%2)) -eq 0
        then
            	let lineas_alumno02=$lineas_alumno02+1
                echo "#$contador_linea : $linea"
        fi

done < $1 > $2;
echo "Número total de líneas para alumno02 por cada fichero: $lineas_alumno02")

