#!/bin/bash

cd /Users/alina/Documents/PluriTAL/Mercredi_projet_encadre/PPE/Fichiers

# Traiement de l'année 2016 on crée le fichier sortie.txt
echo "pour l'année 2016" > sortie.txt
grep "Location" 2016*.ann | wc -l >> sortie.txt
# Traiement de l'année 2017, on écrit à la suite du fichier
echo "pour l'année 2017" >> sortie.txt
grep "Location" 2017*.ann | wc -l >> sortie.txt
# Traiement de l'année 2018, on écrit à la suite du fichier
echo "pour l'année 2018" >> sortie.txt
grep "Location" 2018*.ann | wc -l >> sortie.txt

