#!/bin/bash

#  idem.sh
#
#  idem.sh écrit sur stdout tous les noms complets
#  (répertoires et nom de base du fichier) des fichiers correspondant à expression
#  dans les arborescences de répertoires de chaque chemin mentionné.
#
#  Created by Raphaël Gressier on 26/11/12.

FichierNOM=
FichierINOM=
CIBLERecherche=
TAILLE=
VERBOSE=

#find .  -name toto.txt

###[VALIDE] Condition si l'utilisateur ne met pas d'argument.
if [ -z $1 ]
    then
    echo -e "Oups ... Je n'ai pas reçu d'arguments !\nAjoutez --help à la commande pour plus d'informations."
    exit 1
fi

while (($#))
do
    case $1 in
###[VALIDE] Condition si l'utilisateur demande de l'aide ou le man.
    "--help" | "-h")
        echo "####################################################################"
        echo "Bienvenue dans l'aide de Gemini"
        echo "####################################################################"
        more ../man/idem.txt
        echo -e "\n"
        exit 5
    ;;
### Condition si l'utilisateur demande le mode verbose
    "--verbose" | "-v")
        VERBOSE=1
        echo "Je suis en mode bla blabla ..."
    ;;

    "-name")
        FichierNOM=$2
        shift
        if [[ -z $FichierNOM ]]
        then
        echo "Oups ! Vous devez saisir un nom de fichier après la balise -name."
        exit 3
        fi
    ;;

    "-iname")
        FichierINOM=$2
        shift
        if [[ -z $FichierINOM ]]
        then
        echo "Hé ! Vous devez saisir un nom de fichier après la balise -iname."
        exit 4
        fi
    ;;

### Condition si autre cas
    *)
    if [[ -d $1 ]]
    then
        CIBLERecherche="$CIBLERecherche $1"
    else
        echo "Erreur : $1 autre q'un doss !"
        exit 12
    fi
esac
shift
done
#ETAPE DE D'ANALYSE TERMINEE
#---------------------------
#VERIFICATION DES ARGUMENTS


#CHECK SI IL Y A AU MOINS UNE CIBLE[VALIDE]
if [[ -z $CIBLERecherche ]]
then
echo "Euh... Il ne faut pas oublier de me donner un chemin de recherche !"
exit 7
fi

#VERIFICATION DES ARGUMENTS TERMINEE
#---------------------------
#LANCEMENT DE LA RECHERCHE








