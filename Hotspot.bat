@echo off

echo "------------------------------------------ "
echo "*******Mobile hotspot ******* "
echo "------------------------------------------ "

set /p input= Type ON/OFF: 

IF "%input%"=="ON" goto welcome
if  "%input%"=="on" goto welcome
IF "%input%"=="OFF" goto Bye
IF "%input%"=="off" goto Bye
echo ----------------------------------------------------------

echo     Invalid Option - Please try again!!!    
timeout 10
goto Exit
:welcome
echo ----------------------------------------------------------
echo Setting up network.....
echo ----------------------------------------------------------
netsh wlan set hostednetwork mode=allow ssid=DELLSPOT key=password
netsh wlan start hostednetwork

timeout 10
goto Exit
:Bye
echo ----------------------------------------------------------
echo Stopping Hotspot....
echo ----------------------------------------------------------
netsh wlan stop hostednetwork
timeout 10
goto Exit
:Exit


