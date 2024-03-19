Class {
	#name : 'JavadocPackageTest',
	#superclass : 'TestCase',
	#instVars : [
		'aPackage'
	],
	#category : 'javadoc',
	#package : 'javadoc'
}

{ #category : 'running' }
JavadocPackageTest >> setUp [
	super setUp.

	"Put here a common initialization logic for tests"
	aPackage := DAPackage onPackageNamed: 'Color'.
]

{ #category : 'as yet unclassified' }
JavadocPackageTest >> streamPackageTest [ 

| doc | 
doc := JavadocPackage new. 
doc streamPackage: 'Colors'. 
]
