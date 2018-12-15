
startup nomount pfile = C:\GO\Parametros\initGO.ORA;
create database "GO" 
logfile group 1 ('C:\GO/Redo/DISK_A/REDO1/redo1.log') size 100M,         
        group 2 ('C:\GO/Redo/DISK_B/REDO2/redo2.log') size 100M,         
        group 3 ('C:\GO/Redo/DISK_C/REDO3/redo3.log') size 100M 
character set WE8ISO8859P1 
national character set utf8 
datafile 'C:\GO/System/system.dbf' size 500M autoextend on next 10M maxsize 
unlimited extent management local 
sysaux datafile 'C:\GO/SysAux/sysaux.dbf' size 100M autoextend on next 10M 
maxsize unlimited 
undo tablespace undotbs1 datafile 'C:\GO/Undo/undotbs1.dbf' size 100M 
default temporary tablespace temp tempfile 'C:\GO/Temp/temp01.dbf' size 
100M;

@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\catalog.sql;
@C:\oraclexe\app\oracle\product\11.2.0\server\rdbms\admin\catproc.sql;

CREATE TABLESPACE TS1 DATAFILE 'C:\GO\Areas\TS1\TS1.dbf' SIZE 5M REUSE AUTOEXTEND ON NEXT 7M MAXSIZE 50M;
CREATE TABLESPACE TS2 DATAFILE 'C:\GO\Areas\TS2\TS2.dbf' SIZE 5M REUSE AUTOEXTEND ON NEXT 7M MAXSIZE 50M;
CREATE TABLESPACE RMAN DATAFILE 'C:\GO\Areas\RMAN\RMAN.dbf' SIZE 5M REUSE AUTOEXTEND ON NEXT 7M MAXSIZE 50M;


 CREATE TABLE T1(
a int, 
b int, 
c int
)
TABLESPACE TS1;

 CREATE TABLE T2(
a int, 
b int, 
c int
)
TABLESPACE TS1;

 CREATE TABLE T3(
a int, 
b int, 
c int
)
TABLESPACE TS1;

 CREATE TABLE T4(
a int, 
b int, 
c int
)
TABLESPACE TS2;

 CREATE TABLE T5(
a int, 
b int, 
c int
)
TABLESPACE TS2;
 CREATE TABLE T6(
a int, 
b int, 
c int
)
TABLESPACE TS2;

insert into t1 values(1,2,3);
insert into t2 values(4,6,8);
insert into t3 values(9,12,15);
insert into t4 values(16,20,24);
insert into t5 values(25,30,35);
insert into t6 values(36,42,48);	
commit;	

CREATE USER RMAN_user IDENTIFIED BY rman
DEFAULT TABLESPACE RMAN
QUOTA UNLIMITED ON SYSTEM;

GRANT ALL PRIVILEGES TO RMAN;
GRANT RECOVERY_CATALOG_OWNER TO RMAN_user;
GRANT CONNECT, RESOURCE TO RMAN_user;


CREATE USER USER1 IDENTIFIED BY USER1
DEFAULT TABLESPACE TS1
QUOTA UNLIMITED ON TS1;

GRANT ALL PRIVILEGES TO USER1;

CREATE USER USER2 IDENTIFIED BY USER2
DEFAULT TABLESPACE TS1
QUOTA UNLIMITED ON TS1;

GRANT ALL PRIVILEGES TO USER2;

CREATE USER USER3 IDENTIFIED BY USER3
DEFAULT TABLESPACE TS1
QUOTA UNLIMITED ON TS1;

GRANT ALL PRIVILEGES TO USER3;

CREATE USER USER4 IDENTIFIED BY USER4
DEFAULT TABLESPACE TS2
QUOTA UNLIMITED ON TS2;

GRANT ALL PRIVILEGES TO USER4;

CREATE USER USER5 IDENTIFIED BY USER5
DEFAULT TABLESPACE TS2
QUOTA UNLIMITED ON TS2;

GRANT ALL PRIVILEGES TO USER5;

CREATE USER USER6 IDENTIFIED BY USER6
DEFAULT TABLESPACE TS2
QUOTA UNLIMITED ON TS2;

GRANT ALL PRIVILEGES TO USER6;