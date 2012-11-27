#!/bin/bash

#  idem.sh
#
#  idem.sh écrit sur stdout tous les noms complets
#  (répertoires et nom de base du fichier) des fichiers correspondant à expression
#  dans les arborescences de répertoires de chaque chemin mentionné.
#
#  Created by Raphaël Gressier on 26/11/12.


#find .  -name toto.txt

while (($#))
do
###[VALIDE] Condition si l'utilisateur ne met pas d'argument.
    case $1 in "--help")
        echo "####################################################################"
        echo "Bienvenue dans l'aide de Gemini"
        echo "####################################################################"
        cat ../man/idem.txt
    ;;
###[VALIDE] Condition si l'utilisateur demande de l'aide ou le man.
    *)
        echo -e "Oups ... Je n'ai pas reçu d'arguments !\nAjoutez --help à la commande pour plus d'informations."