��&cls
@echo off
setlocal enabledelayedexpansion
color A
title DoomedV1 by - @doomed_dev
mode 90,20
chcp 65001 >nul

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% neq 0 (
    echo Requesting administrative privileges...
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\GetAdmin.vbs"
    echo UAC.ShellExecute "%~0", "", "", "runas", 1 >> "%temp%\GetAdmin.vbs"
    "%temp%\GetAdmin.vbs"
    del "%temp%\GetAdmin.vbs"
    exit /B
)

:user
cls
echo.
set /p username=Enter Username:

:menu
mode 115,35

echo.
echo                      MADE BY @DOOMED_DEV ON DISCORD
echo [38;5;33m
echo [38;5;34m██████╗  ██████╗  ██████╗ ███╗   ███╗███████╗██████╗      ██╗   ██╗ ██╗  
echo [38;5;35m██╔══██╗██╔═══██╗██╔═══██╗████╗ ████║██╔════╝██╔══██╗     ██║   ██║███║
echo [38;5;36m██║  ██║██║   ██║██║   ██║██╔████╔██║█████╗  ██║  ██║     ██║   ██║╚██║
echo [38;5;37m██║  ██║██║   ██║██║   ██║██║╚██╔╝██║██╔══╝  ██║  ██║     ╚██╗ ██╔╝ ██║ 
echo [38;5;38m██████╔╝╚██████╔╝╚██████╔╝██║ ╚═╝ ██║███████╗██████╔╝      ╚████╔╝  ██║
echo [38;5;39m╚═════╝  ╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═════╝        ╚═══╝   ╚═╝
echo                 ╔══════════════════════════════╗
echo                     Welcome back %Username% 
echo.                ╚══════════════════════════════╝
echo  [38;5;39m╔══════════════════TOOLS═════════════════╗  ╔═════════SITES══════════╗  ╔════ROBLOX PHISHING═════╗
echo.  
echo  [90m^>  [97m1. Spam webhook       [90m^>  [97m5. IP Pinger    [90m^>  [97m9.  IP grabber          [90m^>  [97m13. (Soon in V2)
echo  [90m^>  [97m2. Webhook Checker    [90m^>  [97m6. IP Lookup    [90m^>  [97m10. WiFi checker        [90m^>  [97m14. (Soon in V2)
echo  [90m^>  [97m3. Webhook Deleter    [90m^>  [97m7. Credits      [90m^>  [97m11. JailBroken ChatGPT  [90m^>  [97m15. (Soon in V2)
echo  [90m^>  [97m4. Website IP Lookup  [90m^>  [97m8. Exit         [90m^>  [97m12. SOON                [90m^>  [97m16. (Soon in V2)
echo.
echo  [38;5;39m╚════════════════════════════════════════╝  ╚════════════════════════╝  ╚════════════════════════╝
echo  [38;5;39m╔═══════════════GENERATOR════════════════╗  ╔═════════START══════════╗
echo. 
echo  [90m^>  [97m17. Nitro GiftLink                      [90m^>  [97m21. Start Notepad
echo  [90m^>  [97m18. Amazon GiftCard                     [90m^>  [97m22. Start VisualStudio
echo  [90m^>  [97m19. V-Bucks GiftCard                    [90m^>  [97m23. Start CMD
echo  [90m^>  [97m20. Robux GiftCard                      [90m^>  [97m24. Start Steam
echo. 
echo  [38;5;39m╚════════════════════════════════════════╝  ╚════════════════════════╝
set /p "choice=[90m > [97m Choice: "

if %choice%==1 (
  goto setwebhook
) else if %choice%==2 (
  goto checker
) else if %choice%==8 (
  exit
) else if %choice%==3 (
  goto deleter                           
) else if %choice%==5 (
goto pinger
) else if %choice%==7 (
goto credits
) else if %choice%==4 (
goto website
) else if %choice%==6 (
goto ip
) else if %choice%==9 (
goto g1
) else if %choice%==10 (
goto g2
) else if %choice%==11 (
goto g3
) else if %choice%==13 (
goto Roblox
) else if %choice%==17 (
goto generate_nitro_codes 
) else if %choice%==18 (
goto amazon
) else if %choice%==19 (
goto fortnite
) else if %choice%==20 (
goto robloxgen
) else if %choice%==21 (
goto g5
) else if %choice%==22 (
goto g6
) else if %choice%==23 (
goto g7
) else if %choice%==24 (
goto g8
)
:------------------------------------------------------------------------------------

:setwebhook

cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

echo.
echo.

set /p "webhook=[90m > [97m Webhook: "
set /p "message=[90m > [97m Message: "
set /p "username=[90m > [97m Bot username: "

set finalmessage=%message%
goto spamspamspam

:spamspamspam
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo.
echo.
echo  [90m^>  [97mSpamming..
set "payload={\"username\": \"%username%\", \"content\": \"%message%\"}"
FOR /L %%A IN (1,1,200) DO (
    ping 127.0.0.1 -n 1 -w 1 >nul

    for /f "delims=" %%a in ('curl -s -X POST -H "Content-Type: application/json" -d "%payload%" %webhook% -w "%%{http_code}" -o nul') do set status_code=%%a

    if "!status_code!" == "204" (
        echo  [90m^>  [97mMessage [32msent [97m
    ) else if "!status_code!" == "429" (
        echo  [90m^>  [97mWebhook has been [33mratelimited[97m
    ) else if "!status_code!" == "404" (
        echo  [90m^>  [97mMessage [31mfailed to send [97m
        timeout 5 >nul
        cls
        goto menu
    ) else if "!status_code!" == "000" (
        echo  [90m^>  [97mWebhook URL is [invalid [97m
        timeout 5 >nul
        cls
        goto menu
    ) else (
        echo  [90m^>  [97mStatus code is [31munknown [97m: !status_code!
    )
)
goto spamspamspam

:checker
cls
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

echo.
echo.

set /p "webhook2=[90m > [97m Webhook: "
for /f "delims=" %%a in ('curl --silent --output NUL -w "%%{http_code}" -X GET "%webhook2%"') do set STATUS_CODE=%%a

echo  [90m^>  [97mChecking webhook..

if "%STATUS_CODE%" == "200" (
    echo  [90m^>  [97mWebhook is valid!
    timeout 5 >nul
    cls
    goto menu
) else (
  echo  [90m^>  [97mWebhook is invalid!
    timeout 5 >nul
    cls
    goto menu
)

:credits
title DoomedV1 - cedits
cls
mode 80,30

echo.        
echo.
echo         Why should i turn off Anti-Virus for some options:
echo.
echo         when excecuting an option sometimes windows detects it
echo         as a virus this is called a false-positive this basicly
echo         means that is gets detected as a virus but practicly isn't
echo         DoomedV1 is an open source tool so you can be sure that
echo         there is no hidden Virus or Malware inside of the program.
echo.
echo.
echo                            DISCLAIMER:
echo.
echo         this tool is for educational purposes only! i am not 
echo         responsible for the unresponsible things users 
echo         do with my tool! all actions taken with this tool
echo         are not my responsibility. 
echo.
echo.
echo                        About DoomedV1:
echo.
echo         made and developed by @doomed_dev on discord
echo         DoomedV1 is an innovative paid tool that can
echo         be used for Doxxing Dossing Spamming etc.
echo.
echo.
echo.

pause
goto menu

:pinger

cls

echo.
echo [38;5;34m██╗██████╗     ██████╗ ██╗███╗   ██╗ ██████╗ ███████╗██████╗ 
echo [38;5;35m██║██╔══██╗    ██╔══██╗██║████╗  ██║██╔════╝ ██╔════╝██╔══██╗
echo [38;5;36m██║██████╔╝    ██████╔╝██║██╔██╗ ██║██║  ███╗█████╗  ██████╔╝
echo [38;5;37m██║██╔═══╝     ██╔═══╝ ██║██║╚██╗██║██║   ██║██╔══╝  ██╔══██╗
echo [38;5;38m██║██║         ██║     ██║██║ ╚████║╚██████╔╝███████╗██║  ██║
echo [38;5;39m╚═╝╚═╝         ╚═╝     ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝
echo [38;5;40m                   close program to stop
set /p IP=enter IP:
:rainbow
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul

color a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 02
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 03
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 04
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 05
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 06
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 07
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 08
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 09
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0a
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0b
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0c
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...) 
ping -t 2 0 10 127.0.0.1 >nul
color 0d
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0e
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
color 0f
PING -n 1 %IP% | FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo offline...)
ping -t 2 0 10 127.0.0.1 >nul
goto rainbow

:website

cls

echo lowest answer is right!

echo Quick Domain IP lookup
echo ----------------------
set /p domain=Enter domain name: 
nslookup %domain%
pause
goto menu

:ip

setlocal ENABLEDELAYEDEXPANSION
set webclient=webclient
if exist "%temp%\%webclient%.vbs" del "%temp%\%webclient%.vbs" /f /q /s >nul
if exist "%temp%\response.txt" del "%temp%\response.txt" /f /q /s >nul

cls
echo.
echo [38;5;34m██╗██████╗      ██████╗██╗  ██╗███████╗ ██████╗██╗  ██╗███████╗██████╗ 
echo [38;5;35m██║██╔══██╗    ██╔════╝██║  ██║██╔════╝██╔════╝██║ ██╔╝██╔════╝██╔══██╗
echo [38;5;36m██║██████╔╝    ██║     ███████║█████╗  ██║     █████╔╝ █████╗  ██████╔╝
echo [38;5;37m██║██╔═══╝     ██║     ██╔══██║██╔══╝  ██║     ██╔═██╗ ██╔══╝  ██╔══██╗
echo [38;5;38m██║██║         ╚██████╗██║  ██║███████╗╚██████╗██║  ██╗███████╗██║  ██║
echo [38;5;39m╚═╝╚═╝          ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo.
echo           still in BETA turn off anti-virus for this option
echo.
echo           View your IP: (1)
echo.
echo           Lookup an IP: (2)
echo.
echo.
echo.
goto action
:input
echo.
echo Please enter a valid input option.
echo.
:action
echo.
set /p action=Enter choice: 
if '%action%'=='1' echo sUrl = "http://ipinfo.io/json" > %temp%\%webclient%.vbs & goto localip
if '%action%'=='2' goto iplookup
goto input
:iplookup
cls
echo.
echo                          Type an IP to lookup
echo.
set ip=127.0.0.1
set /p ip=IP: 
echo sUrl = "http://ipinfo.io/%ip%/json" > %temp%\%webclient%.vbs
:localip
cls
echo set oHTTP = CreateObject("MSXML2.ServerXMLHTTP.6.0") >> %temp%\%webclient%.vbs
echo oHTTP.open "GET", sUrl,false >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Type", "application/x-www-form-urlencoded" >> %temp%\%webclient%.vbs
echo oHTTP.setRequestHeader "Content-Length", Len(sRequest) >> %temp%\%webclient%.vbs
echo oHTTP.send sRequest >> %temp%\%webclient%.vbs
echo HTTPGET = oHTTP.responseText >> %temp%\%webclient%.vbs
echo strDirectory = "%temp%\response.txt" >> %temp%\%webclient%.vbs
echo set objFSO = CreateObject("Scripting.FileSystemObject") >> %temp%\%webclient%.vbs
echo set objFile = objFSO.CreateTextFile(strDirectory) >> %temp%\%webclient%.vbs
echo objFile.Write(HTTPGET) >> %temp%\%webclient%.vbs
echo objFile.Close >> %temp%\%webclient%.vbs
echo Wscript.Quit >> %temp%\%webclient%.vbs
start %temp%\%webclient%.vbs
set /a requests=0
echo.
rem echo Waiting for API response. . .
echo  Looking up IP Address. . .
:checkresponseexists
set /a requests=%requests% + 1
if %requests% gtr 7 goto failed
IF EXIST "%temp%\response.txt" (
goto response_exist
) ELSE (
ping 127.0.0.1 -n 2 -w 1000 >nul
goto checkresponseexists
)
:failed
taskkill /f /im wscript.exe >nul
del "%temp%\%webclient%.vbs" /f /q /s >nul
echo.
echo Did not receive a response from the API.
echo.
pause
goto 
:response_exist
cls
echo.
for /f "delims= 	" %%i in ('findstr /i "," %temp%\response.txt') do (
	set data=%%i
	set data=!data:,=!
	set data=!data:""=Not Listed!
	set data=!data:"=!
	set data=!data:ip:=IP:		!
	set data=!data:hostname:=Hostname:	!
	set data=!data:org:=ISP:		!
	set data=!data:city:=City:		!
	set data=!data:region:=State:	!
	set data=!data:country:=Country:	!
	set data=!data:postal:=Postal:	!
	set data=!data:loc:=Location:	!
	set data=!data:timezone:=Timezone:	!
	echo !data!
)
echo.
del "%temp%\%webclient%.vbs" /f /q /s >nul
del "%temp%\response.txt" /f /q /s >nul
pause
if '%ip%'=='' goto 
goto iplookup

:Grabify
set "folder=DoomedV1"
set "filename=test.bat"

set "path=%~dp0"
set "fullpath=%path%\%folder%\%filename%"

if not exist "%path%\%folder%" (
   mkdir "%path%\%folder%"
)

if not exist "%fullpath%" (
   echo Creating %filename% in %folder%...
   echo @echo Opening %filename%
   echo start "" %fullpath%
   echo pause
   echo > "%fullpath%"
) else (
   echo Opening %filename% in %folder%...
   start "" "%fullpath%"
)

pause

:g1
@echo off
cls
start https://grabify.org/
pause
goto menu

:g2
@echo off
cls
start https://fast.com/
pause
goto menu

:g3
@echo off
cls
start https://gptcall.net/chat?data=%7B%22contact%22%3A%7B%22id%22%3A%22jofsUhj67_LI1KqXB2yp9%22%2C%22flow%22%3Atrue%7D%7D#chatID=%222025-02-13T18%3A50%3A34.871Z%22
pause
goto menu

:deleter
cls
mode 80,20
echo.
echo [38;5;34m██╗    ██╗██╗  ██╗    ██████╗ ███████╗██╗     ███████╗████████╗███████╗██████╗ 
echo [38;5;35m██║    ██║██║  ██║    ██╔══██╗██╔════╝██║     ██╔════╝╚══██╔══╝██╔════╝██╔══██╗
echo [38;5;36m██║ █╗ ██║███████║    ██║  ██║█████╗  ██║     █████╗     ██║   █████╗  ██████╔╝
echo [38;5;37m██║███╗██║██╔══██║    ██║  ██║██╔══╝  ██║     ██╔══╝     ██║   ██╔══╝  ██╔══██╗
echo [38;5;38m╚███╔███╔╝██║  ██║    ██████╔╝███████╗███████╗███████╗   ██║   ███████╗██║  ██║
echo [38;5;39m ╚══╝╚══╝ ╚═╝  ╚═╝    ╚═════╝ ╚══════╝╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
echo.
echo.
set /p input="Enter Your Webhook Url:"
CURL -X "DELETE" %input%
set /p input= Webhook SuccessFul Deleted
cls
goto menu

:Roblox
@echo off
cls
start https://grabify.org/
pause
goto menu

:generate_nitro_codes
cls
echo Generating Discord Nitro Codes...
echo 1 in 100 codes is valid!

setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=1000"
set "code_length=16"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo https://discord.gift/!code!
)

endlocal

pause
goto menu


:amazon
cls
mode 50,75

echo Generating Amazon Codes.
echo 1 in 100 codes is valid!

setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=1000"
set "code_length=16"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo Possible Amazon Code = !code!
)

endlocal

pause
goto menu

:fortnite
cls
mode 50,75

echo Generating V-Bucks Codes.
echo 1 in 100 codes is valid!

setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=1000"
set "code_length=16"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo Possible V-Bucks Code = !code!
)

endlocal

pause
goto menu

:robloxgen
cls
mode 50,75

echo Generating Robux Codes.
echo 1 in 100 codes is valid!

setlocal enabledelayedexpansion

set "characters=ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
set "num_codes=1000"
set "code_length=16"

for /l %%i in (1,1,%num_codes%) do (
    set "code="
    for /l %%j in (1,1,%code_length%) do (
        set /a "rand=!random! %% 36"
        for %%k in (!rand!) do (
            set "code=!code!!characters:~%%k,1!"
        )
    )
    echo Possible Robux Code = !code!
)

endlocal

pause
goto menu

:g5
@echo off
cls
start notepad.exe
pause
goto menu

:g6
@echo off
cls
start devenv.exe
pause
goto menu

:g7
@echo off
cls
start cmd.exe
pause
goto menu

:g8
@echo off
cls
start Steam.exe
pause
goto menu
