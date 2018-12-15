SET MYDATETIME=__%date:~5,2%_%date:~8,2%_%date:~11,4%__%time:~1,1%_%time:~3,2%_%time:~6,2%
rem SET MYDATETIME=__%date:~5,2%_%date:~8,2%_%date:~11,4%__%time:~0,2%_%time:~3,2%_%time:~6,2%
rem echo %MYDATETIME%
rman target=/ @C:\GO\Estrategias\EST01\script3.txt>C:\GO\BACKUP\BITACORA\ParcialCompleto2\reporte_parcial_completo2_%MYDATETIME%.log;	


