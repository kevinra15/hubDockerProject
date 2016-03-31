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
done

