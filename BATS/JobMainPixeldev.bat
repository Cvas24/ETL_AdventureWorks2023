for /F "tokens=2 delims==." %%I in ('%SystemRoot%\System32\wbem\wmic.exe OS GET LocalDateTime /VALUE') do set "LocalDateTime=%%I"
set "LocalDate=%LocalDateTime:~0,8%"
set "LocalTime=%LocalDateTime:~8,4%"
if not exist "D:\RegistrosLogs\%LocalDate%" mkdir "C:\RegistrosLogs\%LocalDate%"


cd "C:\data-integration"
call Kitchen.bat /file:"C:\REPOSITORIO\PROJECT_Pixeldev\Job\Job_Main_PixelDev.kjb" -param:"SISTEMA=PROYECT_PIXELDEV" -logfile=C:\RegistrosLogs\%LocalDate%\log_proyecto_PIXELDEV_%LocalTime%.log

exit