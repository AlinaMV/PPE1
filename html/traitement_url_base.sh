#!/usr/bin/env bash

#===============================================================================
# VOUS DEVEZ MODIFIER CE BLOC DE COMMENTAIRES.
# Ici, on décrit le comportement du programme.
# Indiquez, entre autres, comment on lance le programme et quels sont
# les paramètres.
# La forme est indicative, sentez-vous libres d'en changer !
# Notamment pour quelque chose de plus léger, il n'y a pas de norme en bash.
#===============================================================================

fichier_urls=$1 # le fichier d'URL en entrée
fichier_tableau=$2 # le fichier HTML en sortie


# ici vérifie si nos deux paramètres existent, sinon on ferme!
if [ $# -ne 2 ] 
then
	echo "ce programme demande un argument" 
		exit
fi

echo "<html> 
<header>
    <meta charset="UTF-8" /> 
  </header>
<body>
  <table>
	<tr><th>ligne</th><th>code</th><th>URL</th></tr>" > $fichier_tableau



while read -r LINE;
	do
		#resultat=$(curl --head --silent $LINE | egrep "HTTP?S?") 
		resultat=$(curl --head --silent $LINE | egrep "HTTP/" | cut -d " " -f 2)
		if [[ $resultat -eq 200 ]]
		then
			#charset=$($LINE egrep | "charset")
			#echo "ressemble à une URL valide"
			echo "<tr><td>1</td><td>"$resultat"</td><td>"$LINE"</td></tr>" >> $fichier_tableau
			
		#else
			#echo "ce n'est pas une URL valide"
		fi
done < $fichier_urls

echo  "</table> 
 </body>
</html>" >> $fichier_tableau
		
# modifier la ligne suivante pour créer effectivement du HTML

#lineno=1;


#while read -r line;
#do
#	echo "ligne $lineno: $line";
#	lineno=$((lineno+1));
#done < $fichier_urls