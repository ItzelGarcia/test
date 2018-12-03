@echo off
rem PROGRAMA PARA DESCARGAR DATOS

echo Hola, buenas tardes.

pause

:: los comentarios se hacen usando el comando "rem" o "::".

:: Si no agregamos PAUSE despu�s de "Hola buenas tardes", al momento de correr el programa se correr� todo en un segundo y no lo podremos ver.

:: Hay que procurar eliminar los archivos que empiezan con .#, ya que son basura y solo acumulan espacio.


::Vamos a descargar todos los n�meros de las estaciones de sonora que aparecen en el art�culo de Robles para crear un programa que nos permita descargar una lista de archivos, como ya sabemos los datos que debemos obtener de Robles, usamos esos primeros para comparar si el programa corre como debe.

::Una vez listo el programa, se podr� utilizar para descargar cualquier n�mero de archivos de estaciones.



rem NOM. ESTACI�N: N�M. DE ESTACI�N

:: Sonoita: 26096

:: Tres Hermanos: 26102

:: Aguaprieta: 26001




rem Vamos a hacer una lista con el n�mero de cada estaci�n en un archivo separado, el cual vamos a leer en este programa para que descargue las estaciones que se mencionaron.

echo Vamos a probar!
pause

:: los %% funciona como una "X en", donde %%f es cada elemento que est� contenido en el documento. En este caso, es cada n�mero de estaci�n.

:: /f indica que se van a leer contendios de un archivo. 

::Nombre del documento: BajaCalSur.txt


for /f %%f in (BajaCalSur.txt) do (
    echo %%f
    wget -U mozilla http://smn.cna.gob.mx/tools/RESOURCES/Diarios/%%f.txt
)

:: Como ECHO funciona para repetir todo lo que pidas, le tenemos que poner fin al echo con ECHO/

echo Terminado!! :D
pause
