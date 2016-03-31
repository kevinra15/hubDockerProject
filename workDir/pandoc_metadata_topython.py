#!/usr/bin/python
#-*- coding: utf-8-*-
#Kevin Ramos Lopez
#isx47752902
#31/03/2016
#M09 CMS-UF2
#Traduir de YAML a python

#~ title:  'This is the title: it contains a colon'
#~ author:
#~ - name: Author One
  #~ affiliation: University of Somewhere
#~ - name: Author Two
  #~ affiliation: University of Nowhere
#~ tags: [nothing, nothingness]
#~ abstract: |
  #~ This is the abstract.
#~ 
  #~ It consists of two paragraphs.

Y = {
	"title" = 'This is the title: it contains a colon',
	"author" = [
		{	'name' : 'Author One', 
			'affiliation' : 'University of Somewhere'
		}, 
		{	'name' : 'Author Two', 
			'affiliation' : 'University of Nowhere'
		}
	]
	"tags" = [ 'nothing', 'nothingness' ]

	"abstract" = 'This is the abstract.\n\nIt consists of two paragraphs.\n'
}
