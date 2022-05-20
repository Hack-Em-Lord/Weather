@echo off
title Weather System - Hack'Em Lord

call :start


:start
mode 133, 40 
cls & echo                                          ------------------------------------------ & echo.
echo                                                Weather System - Hack'Em Lord
echo.
echo                                          ------------------------------------------

echo. & echo Select a Language ? 
echo. & echo  [1]: English & echo  [2]: Vietnamese & echo.
echo ___________________________________________________ 
echo. & echo  [3]: Exit & echo  [4]: About & echo. 
	set /p lang= Select [ ? ] = 
	if %lang%==1 goto :eng
	if %lang%==2 goto :vie
    if %lang%==3 exit
    if %lang%==4 goto :about

:vie
cls
echo. & echo Chon 1 Dia Diem ? 
echo. & echo  [1]: Ha Noi & echo  [2]: TP. Ho Chi Minh  & echo  [3]: TP. Da Nang & echo  [4]: Tu Nhap Vung & echo.
    set /p vie= Select [ ? ] = 
        if %vie% ==1 (curl -H "Accept-Language: vi" wttr.in/hanoi & pause)
        if %vie% ==2 (curl -H "Accept-Language: vi" wttr.in/hochiminh & pause)
        if %vie% ==3 (curl -H "Accept-Language: vi" wttr.in/danang & pause )
        if %vie% ==4 goto eng
goto :start

:eng
cls
echo. & echo Select a Place ? 
echo. & echo Example: newyork, vietnam, usa,...
    set /p eng= Select [ ? ] = 
    curl https://wttr.in/%eng%
    pause
goto :start

:about
cls
echo:           ___________________________________________________ & echo.
echo:                      Thanks For Using Our Tools !!!           & echo.
echo:           ___________________________________________________ 
echo:
start https://discord.gg/pZhZDu9Anw
start https://github.com/hackemlord
pause
goto :start
