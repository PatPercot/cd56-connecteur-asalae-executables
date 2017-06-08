#!/bin/bash

# **********************************************************
#
# Préparation des exécutables du connecteur As@laé
#
# **********************************************************
#

# On se place dans le répertoire parent
cd ..

# Copie des exécutables Java 
echo Suppression des exécutables java 
[ ! -e lib ] && mkdir lib
rm lib/*

echo Copie des exécutables Java
cp ../cd56-connecteur-asalae/target/lib/* lib
cp ../cd56-connecteur-asalae/target/cd56-connecteur-asalae-*.jar lib

echo Copie de la documentation
rm -rf Documentation
cp -r ../cd56-connecteur-asalae/Documentation .

cp ../cd56-connecteur-asalae/param.config.sample .
cp ../cd56-connecteur-asalae/CHANGELOG .

# On revient dans utils
cd -

echo Copie achevée
