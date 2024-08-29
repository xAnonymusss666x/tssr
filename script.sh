#!/bin/bash

# 1. Demander à l'utilisateur où stocker le contenu
echo "Où souhaitez-vous stocker le contenu ? (Veuillez entrer le chemin complet ou relatif):"
read emplacement

# 2. Se déplacer dans l'emplacement
cd "$emplacement" || { echo "Erreur : Impossible de se déplacer dans l'emplacement spécifié."; exit 1; }

# 3. Créer un dossier
echo "Quel nom souhaitez-vous donner au nouveau dossier ?"
read nom_dossier
mkdir -p "$nom_dossier"
cd "$nom_dossier" || { echo "Erreur : Impossible de se déplacer dans le dossier créé."; exit 1; }

# 4. Vérifier si le fichier collection.txt existe, si non le créer
if [ ! -f collection.txt ]; then
    touch collection.txt
    echo "Le fichier collection.txt n'existait pas, il a été créé."
else
    echo "Le fichier collection.txt existe déjà, il sera utilisé."
fi

# 5. Demander à l'utilisateur s'il veut ajouter un nouveau film
echo "Voulez-vous ajouter un nouveau film à la liste ? (oui/non)"
read reponse

if [ "$reponse" = "oui" ]; then
    # 6. Demander le nom du film à ajouter
    echo "Entrez le nom du film à ajouter à la collection :"
    read nom_film
    # 7. Ajouter le nom du film dans le fichier collection.txt
    echo "$nom_film" >> collection.txt
    echo "Le film '$nom_film' a été ajouté à la collection."
else
    echo "Aucun film n'a été ajouté à la collection."
fi

