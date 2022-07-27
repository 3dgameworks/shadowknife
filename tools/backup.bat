for /F "tokens=1,2,3,4,5 delims=_" %%i in ('PowerShell -Command "& {Get-Date -format "MM_dd_yyyy_HH_mm"}"') do (
    set MONTH=%%i
    set DAY=%%j
    set YEAR=%%k
    set HOUR=%%l
    set MIN=%%m
)
echo %MONTH% %DAY% %YEAR%

P:

C:\"Program Files"\7-Zip\7z.exe a -i!P:\projects\sources\shadowknife\ "shadowknife_%YEAR%%MONTH%%DAY%%HOUR%%MIN%".7z
move *.7z* P:\projects\backups\