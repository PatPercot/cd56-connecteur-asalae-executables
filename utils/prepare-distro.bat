@echo off
REM **********************************************************
REM
REM Préparation des exécutables du connecteur Asalaé
REM
REM **********************************************************
REM


REM On se place dans le répertoire parent
cd ..

REM Copie des exécutables Java 
echo Suppression des exécutables java 
if not exist lib mkdir lib
del /Q lib\*

echo Copie des exécutables Java 
copy ..\cd56-connecteur-asalae\target\lib\* lib 1>NUL
copy ..\cd56-connecteur-asalae\target\cd56-connecteur-asalae-*.jar . 1>NUL

echo Copie de la documentation
rmdir /S /Q Documentation
mkdir Documentation
xcopy /S /Q /Y ..\cd56-connecteur-asalae\Documentation Documentation 1>NUL

copy ..\cd56-connecteur-asalae\param.config.sample .
copy ..\cd56-connecteur-asalae\CHANGELOG .

REM On revient dans utils
cd utils

echo Copie achevée
