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
JavadocPackage >> streamPackage: aPackage [ 

| classes package doc| 

package := RPackageOrganizer default packageNamed: aPackage. 
classes := package classes. 
doc := '' writeStream. 

package classesDo: [ :eachClass |
	doc nextPutAll: 'The class ', eachClass name, ' has:  '; cr;
	nextPutAll: 'Superclass: ', (eachClass superclass ifNil: ['(There is no superclass )'] ifNotNil: [ eachClass superclass name ]); cr;
   nextPutAll: 'Subclasses: ', (eachClass subclasses isEmpty
                                                    ifTrue: ['(There is no subclass )']
                                                    ifFalse: [(eachClass withAll: self subclasses) collect: [:subclass | subclass name] ]); cr;
   nextPutAll: 'instances variables: ', (eachClass instVarNames isEmpty ifTrue: ['(There is no instances variables)'] ifFalse: [ eachClass instVarNames join: ', ' ]) ].

]
