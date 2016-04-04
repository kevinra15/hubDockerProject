#! /bin/bash
#Kevin Ramos Lopez
#30/03/2016
#M09-CMS
#UF-2
#Script que converteix documents de markdown a html

#Per cada file amb l'extensio .md
for file in *.md;
do
	#Crea un file de format html
	pandoc --from markdown \
	--standalone  \
	--output ${file%.md}.html \
	$file
	
	#Validem el doc generat
	xmllint --noout --valid ${file}.html
	#Comprovem si el doc generat es valid
	codiErr=$?
	if [[ $codiErr -ne 0 ]]
	then
		echo "File generat ${file%.md}.html no valid!"
		echo "Codi error: $codiErr"
	fi
done

