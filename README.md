#This is a simple Data Base Oracle estructure.

After creating the physical architecture


1- Create or edit init.ora

2- Create or edit script create database see file -> build.sql
 
4- shutdown in the oracle console then run the file build.sql example: @ 'C: \ Users \ Addiel \ Desktop \ tutorial_BuildBD_ORACLE \ build.sql'

5- run script catalog which incorporates oracle dictionary --add path where you are
@C: \ oraclexe \ app \ oracle \ product \ 11.2.0 \ server \ rdbms \ admin \ catalog.sql

6- run script catproc -> contains tables of symbols to create functions, procedures, etc.
@C: \ oraclexe \ app \ oracle \ product \ 11.2.0 \ server \ rdbms \ admin \ catproc.sql

7- If all the above is correct enter the command:
ALTER database OPEN;

8- create tablespaces
CREATE TABLESPACE A1 datafile 'C: \ MDR \ A1 \ A1.DBF' SIZE 100M;
* IF THE CREATION OF THE DATA BASE FAILS, YOU MUST CLEAN ALL THE FILES THAT WAS GENERATED IN THE STRUCTURE, CHECK THE ERRORS AND TRY AGAIN.
