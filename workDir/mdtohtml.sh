#! /bin/bash
#Kevin Ramos Lopez
#30/03/2016
#M09-CMS
#UF-2
#Script que converteix documents de markdown a html

#Per cada file amb l'extensio .md
for file in *.md
do
	#Crea un file de format html
	pandoc \
		--standalone \
		--from markdown \
		--to html \
		--template=plantillapandoc.tmpl \
		--output ${file%.md}.html \
		$file
	
	#Validem el doc generat
	xmllint --noout --valid ${file%.md}.html
	#Comprovem si el doc generat es valid
	codiErr=$?
	if [[ $codiErr -ne 0 ]]
	then
		echo "File generat ${file%.md}.html no valid!"
		echo "Codi error: $codiErr"
	else
	then
		cp *.html /var/www/GitHub/kevinra15.github.io
	fi
done

