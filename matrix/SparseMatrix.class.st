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
	 ].
rows := rows asArray.
columns := columns asArray.
values := values asArray.




]

{ #category : 'accessing' }
SparseMatrix >> getOriginalMatrix [

"|originalM| 
originalM  := OrderedCollection new.

1 to: rows do: [ :each |
        | row |
        row := OrderedCollection new.
        1 to: columns do: [ :col |
            row add: 0. 
        ].
        originalM add: row.
    ].

    1 to: values size do: [ :each |
        | row col val |
        row := (rows at: each) - 1. 
        col := (columns at: each) - 1. 
        val := values at: each.
        ((originalM at: row+ 1) at: col + 1) put: val. 
    ].

    ^originalM 


|orignalM| 
orignalM := OrderedCollection new. 

1 to: rows do: [ :each | 
	|row| 
	row := (rows at: each).
	1 to: 
	 ]

| traditionalMatrix |
    traditionalMatrix := OrderedCollection new.

    1 to: values size do: [ :i |
        | rowIndex colIndex value |
        rowIndex := (rows at: i) . 
        colIndex := (columns at: i) . 
        value := values at: i.

        (traditionalMatrix at: rowIndex + 1) ifNil: [
            (traditionalMatrix at: (rowIndex + 1)) put: (OrderedCollection new: columns).
        ].

        (((traditionalMatrix at: rowIndex + 1) at: (colIndex + 1)) put: value) ifFalse: [ false ]. 
    ].

    ^traditionalMatrix" 
| originalMatrix colIndex |
    originalMatrix := OrderedCollection new.

    rows withIndexDo: [ :rowValue :rowIndex |
        | originalRow |
        originalRow := OrderedCollection new: columns.
        1 to: rowValue do: [ :index |
            colIndex := columns at: index.
            originalRow at: colIndex put: 0.
        ].
        originalMatrix add: originalRow.
    ].

    ^originalMatrix
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
