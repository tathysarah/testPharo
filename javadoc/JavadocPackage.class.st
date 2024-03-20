"
The class JavadocPackage represents a program which prints all javadoc of a package. 
"
Class {
	#name : 'JavadocPackage',
	#superclass : 'Object',
	#category : 'javadoc',
	#package : 'javadoc'
}

{ #category : 'as yet unclassified' }
JavadocPackage >> javadocForClass: aClass [ 

| doc |
doc := String new.
doc := doc, 'The class ', aClass name, ' has: ', String cr.
doc := doc, '- Superclass: ', aClass superclass name, String cr. 
doc := doc , '- Subclasses: ', (aClass subclasses ifEmpty: ['"There is no subclasses"'] ifNotEmpty: [ aClass subclasses do:[ :aSubclass | 
	doc := doc , aSubclass name, String cr.] ] ), String cr. 
doc := doc , '-Instances variables: ', (aClass allInstVarNames ifEmpty: ['"There is no instances variables"'] ifNotEmpty: [ aClass allInstVarNames asString] ) ,  String cr.
doc := doc, 'and Methods:', String cr.
aClass methodDictionary ifEmpty: [doc := doc, '"There is no methods"'] ifNotEmpty: [ aClass methodDictionary valuesDo: [:method |
	doc := doc, '- ', method selector, String cr. ].] .
	
^doc 




]

{ #category : 'as yet unclassified' }
JavadocPackage >> javadocForPackage: aPackage [ 

|package doc| 

package := RPackageOrganizer default packageNamed: aPackage.  
doc := String new.    
"package classes do: [ :eachClass | 
	doc 
		nextPutAll: (self javadocForClass: eachClass ).
	].

^ doc "

package classes do: [ :eachClass | 
	doc := doc , (self javadocForClass: eachClass ).
	doc := doc , String cr. ].

^ doc 



]
