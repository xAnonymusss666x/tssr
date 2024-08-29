#!/bin/bash

# 1. Demander à l'utilisateur où stocker le contenu
echo "Où souhaitez-vous stocker le contenu ? (Veuillez entrer le chemin complet ou relatif):"
# 2. Récupérer dans une variable l'emplacement
read emplacement

# 3. Se déplacer dans l'emplacement
cd "$emplacement" || { echo "Erreur : Impossible de se déplacer dans l'emplacement spécifié."; exit 1; }

# 4. Créer un dossier
echo "Quel nom souhaitez-vous donner au nouveau dossier ?"
read nom_dossier
mkdir -p "$nom_dossier"
cd "$nom_dossier" || { echo "Erreur : Impossible de se déplacer dans le dossier créé."; exit 1; }

# 5. Créer un fichier collection.txt
touch collection.txt

# 6. Demander à l'utilisateur le nom du film à ajouter
echo "Entrez le nom du film à ajouter à la collection :"
# 7. Récupérer le nom du film à ajouter au fichier collection.txt
read nom_film

# 8. Ajouter le nom du film dans le fichier collection.txt
echo "$nom_film" >> collection.txt

echo "Le film '$nom_film' a été ajouté à la collection dans '$emplacement/$nom_dossier/collection.txt'."
