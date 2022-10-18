#!/bin/bash

cd /Users/alina/Documents/PluriTAL/Mercredi_projet_encadre/PPE/Fichiers

ANNEE=$1
TYPE=$2

echo "pour l'année $ANNEE" 
grep $TYPE $ANNEE*.ann | wc -l