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
columns:= OrderedCollection new.  
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
		val := (row at:column).
		val ~= 0 ifTrue: [ 
			self addRow: row.
			self addColumn: column. 
			self addValue: val. 
			 ]
		]
	 ]


]

{ #category : 'accessing' }
SparseMatrix >> rows [ 
rows:= OrderedCollection new.   
]

{ #category : 'accessing' }
SparseMatrix >> values [ 
values:= OrderedCollection new.  
]
