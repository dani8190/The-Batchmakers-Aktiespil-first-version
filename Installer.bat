@echo off
title The Batch Makers Aktie spil
cd\
cd %userprofile%
echo tryk på en tast for at installere
pause >nul
echo installere
mkdir borsen
cd borsen
mkdir system
cd system
echo @echo off >> aktiemarked.bat
echo title Aktie Marked >> aktiemarked.bat
echo color 0a >> aktiemarked.bat
echo mode con: cols=50 lines=30 >> aktiemarked.bat
echo :home >> aktiemarked.bat
echo cls >> aktiemarked.bat
echo echo Navn         Pris >> aktiemarked.bat
echo echo ----------------------- >> aktiemarked.bat
echo echo EDU        %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo LDP        %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo YLE         %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo LEN         %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo OÅP        %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo OIL          %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo HÆE        %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo MEN         %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo LQM         %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo TBM          %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo echo WWE        %%random%% >> aktiemarked.bat
echo echo -------------------------------- >> aktiemarked.bat
echo pause >> aktiemarked.bat
echo goto home >> aktiemarked.bat
echo @echo off >> lommeregner.bat
echo title Lommeregner >> lommeregner.bat
echo mode con: cols=50 lines=20 >> lommeregner.bat
echo :home >> lommeregner.bat
echo cls >> lommeregner.bat
echo echo lommeregner >> lommeregner.bat
echo echo ================ >> lommeregner.bat
echo echo sidste resultat:                %%ans%% >> lommeregner.bat
echo echo ----------------------------------------- >> lommeregner.bat
echo set /p regn=regnestykke: >> lommeregner.bat
echo set /a ans=%%regn%% >> lommeregner.bat
echo echo                                   =%%ans%% >> lommeregner.bat
echo echo                                    ====== >> lommeregner.bat
echo pause >> lommeregner.bat
echo goto home >> lommeregner.bat
echo programmet er nu installeret
pause
exit
