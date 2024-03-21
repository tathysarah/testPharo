"
The class SparseMatrix is a representation of a sparse matrix created by a simple matrix where there is no acculmulation of 0. 
In this class, every matrix is representing by an array. 
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

"This method build the sparse matrix by a simple matrix where there are fewer elements 0 than a simple matrix."
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
	 ].
rows := rows asArray.
columns := columns asArray.
values := values asArray.




]

{ #category : 'accessing' }
SparseMatrix >> getOriginalMatrix [
" This method returns the original matrix which help to represent the sparse matrix."
   | originalMatrix rowIndex colIndex realRows realColumns|
	realRows := (rows max)+1.
	realColumns := (columns max) +1.
   originalMatrix := Array new: realRows.

   1 to: realRows do: [ :i |
		| originalRow |
      originalRow := Array new: realColumns .
      1 to: realColumns do: [ :j |
			originalRow at: j put: 0. 
			].
      originalMatrix at: i put: originalRow.
   ].

   1 to: self values size do: [ :i |
       rowIndex := (self rows at: i) .
       colIndex := (self columns at: i) .
       (originalMatrix at: rowIndex + 1) at: colIndex + 1 put: (self values at: i).
   ].

    ^ originalMatrix
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
"This method returns a representation or a display of a sparse matrix"
|sparseMatrix | 

sparseMatrix:= OrderedCollection new.  
sparseMatrix add: rows. 
sparseMatrix add: columns.
sparseMatrix add: values. 
sparseMatrix := sparseMatrix do: [ :each | each asArray ].
sparseMatrix := sparseMatrix asArray.
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
