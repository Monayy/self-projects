@echo off
Title En dialogue avec Lucas
color Cf
echo Bonjour comment vas tu ?
ping localhost -n 7 > nul
cls

set input=
set /p input=bien/mal ?

if %input%==bien goto bien
if %input%==mal goto mal
:mal
echo Ha ! Je suis desole pour toi !
cls
echo Bon je vais te laisser tranquille alors. Bye !
ping localhost - n 3 > nul
pause
exit

:bien
echo Ha ! Je suis content, moi aussi je vais bien.
ping localhost -n 3 > nul
pause
cls

echo Bien, je vais te montrer une video qui est drole :D
pause
cls
start Chrome "https://www.youtube.com/watch?v=3I42jddKG5g&feature=youtu.be"
pause
echo Haha xD alors elle t'as fait rigoler ?
echo Moi en tout cas, j'ai bien rigole :D !

set input=
set /p input=Oui/Non ?

if %input%==Oui goto Oui
if %input%==Non goto Non

:Non
echo Hooo ! Dommage.
ping localhost -n 3 > nul
cls

:Oui
echo Cool !
ping localhost -n 3 > nul
cls

echo Bon ben je dois y aller a une prochaine fois peut etre. Ciao
ping localhost -n 3 > nul
pause
exit
