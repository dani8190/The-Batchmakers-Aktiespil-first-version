@echo off
title Børsen Login
color 0a
mode con: cols=50 lines=30
:home
cd\
cd %userprofile%\borsen
cls
echo Borsen 
echo ================================
echo 1 login
echo.
echo 2 opret Bruger
echo.
echo 3 slet din bruger
echo.
echo 4 glemt kodeord
set /P input=:
if %input%==1 goto login
if %input%==2 goto opret
if %input%==3 goto sletbruger
if %input%==4 goto glemtkode
if %input%==opensoure (command.com & goto home)
echo kommandoen eksistere ikke
pause >Nul
goto home

:login
cls
echo Borsen Login
echo =====================
set /P user=brugernavn:
set /P pass=adgangskode:
cls
cd %user%
call pswd.bat
if %pass%==%pswd% (cd main && goto access) else (echo koden er forkert && pause && goto home)
goto home

:opret
cls
echo opret en bruger hos TBM Borsen
echo ==============================
set /P user=brugernavn:
set /P pswd=kodeord:
set /P question=hemmeligt spørgsmål:
set /P answer=svar:
mkdir %user%
cd %user%
echo set pswd=%pswd% >> pswd.bat
echo set question=%question% >> quest.bat
echo set answer=%answer% >> quest.bat
mkdir main
cd main
echo set amount=150000 >> konto.bat
echo beløb=150000 >> regnskab.txt
echo Aktie                                Antal                                    Pris >> regnskab.txt
cls
echo ====================
echo din bruger er nu oprettet
echo ====================
pause >Nul
goto home

:access
title køb og salg
call konto.bat
cd\
cd %userprofile%\borsen\system
start aktiemarked.bat
start lommeregner.bat
cd\
cd %userprofile%\borsen\%user%\main
:menu
echo %amount% >> amountlog.xlr
:uopdate
cls
echo velkommen %user%       på din konto: %amount%
echo -----------------
echo køb og salg
echo ------------------
echo 1 koeb
echo 2 saelg
echo 3 regnskab
echo 4 amount kurs
echo ------------------
set /P input=hvad vil du:
if %input%==1 goto koeb
if %input%==2 goto saelg
if %input%==3 start regnskab.txt && goto uopdate
if %input%==4 start amountlog.xlr && goto uopdate
if %input%==opensource (command.com & goto uopdate)
echo kommandoen eksistere ikke
pause >nul
goto menu

:saelg
cls
set /P aktie=hvilken aktie vil du sælge:
set /P pris=prisen:
set /P antal=antal aktier:
echo ---------------------------------------------------------------------------- >> regnskab.txt
echo %aktie%                                    %antal%                               %pris% >> regnskab.txt
echo ---------------------------------------------------------------------------- >> regnskab.txt
set /A amount=%amount%+%pris%*%antal%
erase /Q /S konto.bat
echo set amount=%amount% >> konto.bat
echo ialt                                                                             %amount% >> regnskab.txt
echo ========================================== >> regnskab.txt
cls
echo =======================
echo solgt
echo =======================
pause >Nul
goto menu


:koeb
cls
set /P aktie=hvilken aktie vil du købe:
set /P pris=prisen:
set /P antal=antal aktier:
echo ---------------------------------------------------------------------------- >> regnskab.txt
echo %aktie%                                    %antal%                              -%pris% >> regnskab.txt
set /A amount=%amount%-%pris%*%antal%
erase /q /s konto.bat
echo set amount=%amount% >> konto.bat
cls
echo =======================
echo købt
echo =======================
pause >Nul
goto menu

:sletbruger
cls
echo slet din bruger
echo ============
set /P user=brugernavn:
cd %user%
call pswd.bat
echo kodeord
echo ---------------------
set /P pass=kodeord:
if %pass%==%pswd% (goto erase) else (echo kodeord er forkert && pause && goto home)
:erase
cd\
cd %userprofile%\borsen
rd /s /q %user%
cls
echo ================
echo din bruger er slettet
echo ================
pause
goto home

:glemtkode
cls
echo glemt kode
echo =============
set /P user=brugernavn:
cd %user%
call quest.bat
echo ----------------------------------------
echo %question%
set /P svar=svar:
if %svar%==%answer% (goto nykode) else (echo forkert svar && pause && goto home)

:nykode
cls
erase /Q /S pswd.bat
cls
echo skriv ny kode
echo ===========
set /P pswd=ny kode:
echo set pswd=%pswd% >> pswd.bat
cls
echo ===============
echo din kode er ændret
echo ===============
pause >Nul
goto home
