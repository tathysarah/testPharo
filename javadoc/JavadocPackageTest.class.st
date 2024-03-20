Class {
	#name : 'JavadocPackageTest',
	#superclass : 'TestCase',
	#category : 'javadoc',
	#package : 'javadoc'
}

{ #category : 'running' }
JavadocPackageTest >> setUp [ 

super setUp.
]

{ #category : 'tests' }
JavadocPackageTest >> testPrintInformationOfAPackage [

|documentation| 
documentation := JavadocPackage new. 
self assert: (documentation javadocForPackage: 'Colors') isString.
]
