#This is a simple Data Base Oracle estructure.
Despues de crear la arquitectura fisica
1- Crear o editar init.ora

2- Crear o editar script create database ver archivo --> build.sql
 
4- shutdown en la consola de oracle luego correr el archivo build.sql ejemplo: @'C:\Users\Addiel\Desktop\tutorial_BuildBD_ORACLE\build.sql'

5- correr script catalog el cual incorpora diccionario de oracle --añadir ruta de donde se encuentra
	@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\catalog.sql

6- correr script catproc --> contiene tablas de simbolos para crear functions, procedures , etc
	@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\catproc.sql

7- Si todo lo anterior esta correcto ingresar el comando:
	ALTER database OPEN;

8- crear tablespaces 
	CREATE TABLESPACE A1 datafile 'C:\MDR\A1\A1.DBF' SIZE 100M;
*SI LA CREACION DE LA BASE FALLA LIMPIAR LOS ARCHIVOS DE LA ESTRUCTURA

