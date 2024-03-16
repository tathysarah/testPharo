"
The class SparseMatrix
"
Class {
	#name : 'SparseMatrix',
	#superclass : 'Object',
	#instVars : [
		'rows',
		'columns',
		'values'
	],
	#category : 'matrix',
	#package : 'matrix'
}

{ #category : 'accessing' }
SparseMatrix >> addColumn: aCol [
columns add: aCol.  
]

{ #category : 'accessing' }
SparseMatrix >> addRow: aRow [
rows add: aRow  
]

{ #category : 'accessing' }
SparseMatrix >> addValue: aVal [
values add: aVal 
]

{ #category : 'accessing' }
SparseMatrix >> columns [
	^columns 
  
]

{ #category : 'accessing' }
SparseMatrix >> fromSimpleMatrix: aSimpleMatrix [

|nbColumns nbRows| 
nbColumns :=0.
nbRows := aSimpleMatrix size. 

1 to: nbRows do: [ :row |
	|sizeOfRow| 
	sizeOfRow := (aSimpleMatrix at: row) size. 
	nbColumns := nbColumns max: sizeOfRow. 
	1 to: sizeOfRow do: [ :column |
		|val|
		val := ((aSimpleMatrix at:row) at:column).
		val ~= 0 ifTrue: [ 
			self addRow: (row - 1).
			self addColumn: (column-1). 
			self addValue: val. 
			 ]
		]
	 ]


]

{ #category : 'accessing' }
SparseMatrix >> initialize [ 
 super initialize. 

rows := OrderedCollection new.
columns := OrderedCollection new.
values := OrderedCollection new.
]

{ #category : 'accessing' }
SparseMatrix >> printSparseMatrix [ 

|actual sparseMatrix| 

actual:= OrderedCollection new.  
actual add: rows. 
actual add: columns.
actual add: values. 
sparseMatrix := actual do: [ :each | Transcript show: each;cr. ].
^ sparseMatrix 

]

{ #category : 'accessing' }
SparseMatrix >> rows [ 
	^rows
]

{ #category : 'accessing' }
SparseMatrix >> values [ 
	^values
]
