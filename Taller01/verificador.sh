#!/bin/sh

logisim $1 -tty table > resultados.txt
echo "Resultados guardados en resultados.txt"

grep -Fxvf expected.txt resultados.txt > diff.txt
if [ -s diff.txt ]
then
	echo "Revisa el archivo diff.txt para ver las diferencias con el resultado esperado."
else
	echo "El Taller parece funcionar!"
fi
