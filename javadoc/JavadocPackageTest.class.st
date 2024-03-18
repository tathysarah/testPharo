Class {
	#name : 'JavadocPackageTest',
	#superclass : 'TestCase',
	#category : 'javadoc',
	#package : 'javadoc'
}

{ #category : 'as yet unclassified' }
JavadocPackageTest >> streamPackageTest [ 

| doc | 
doc := JavadocPackage new. 
doc streamPackage: 'Colors'. 
]
