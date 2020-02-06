@ECHO OFF

REM On se place dans le répertoire du script
cd %~dp0

REM GENERATOR : Modifier à chaque changement de version
SET CONNECTEUR_ASALAE=cd56-connecteur-asalae-1.1.1.jar

REM LIB
SET COMMONS_LANG_LIB=lib/commons-lang-2.3.jar;lib/accessors-smart-1.1.jar;lib/asm-5.0.3.jar;lib/commons-codec-1.9.jar;lib/commons-logging-1.2.jar;lib/httpclient-4.5.2.jar;lib/httpcore-4.4.4.jar;lib/httpmime-4.5.2.jar;lib/json-path-2.2.0.jar;lib/json-smart-2.2.1.jar;lib/junit-3.8.1.jar;lib/slf4j-api-1.7.16.jar;lib/slf4j-simple-1.6.4.jar

SET JAVA_BIN=java

SET CLASSPATH=%CONNECTEUR_ASALAE%;

%JAVA_BIN% -classpath %CLASSPATH% fr.morbihan.patrickpercot.cd56_connecteur_asalae.AsalaeConnectorLauncher  %*
