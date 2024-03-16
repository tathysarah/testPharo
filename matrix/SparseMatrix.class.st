"
The class SparseMatrix
"
Class {
	#name : 'SparseMatrix',
	#superclass : 'Object',
	#instVars : [
		'row',
		'column',
		'value',
		'nbRows',
		'nbColumns'
	],
	#category : 'matrix',
	#package : 'matrix'
}

{ #category : 'accessing' }
SparseMatrix >> column [
	^column 
]

{ #category : 'accessing' }
SparseMatrix >> nbColumns [ 
 	^ nbColumns 
]

{ #category : 'accessing' }
SparseMatrix >> nbColumns: aSimpleMatrix [

nbColumns :=0.  
1 to: nbRows do: [ :anotherRow |
	|cur|
	cur := (aSimpleMatrix at: anotherRow ) size.
	nbColumns := nbColumns max: cur. 
	]
]

{ #category : 'accessing' }
SparseMatrix >> nbRows [ 
 	^ nbRows
]

{ #category : 'accessing' }
SparseMatrix >> nbRows: aSimpleMatrix [
nbRows := aSimpleMatrix size 
]

{ #category : 'accessing' }
SparseMatrix >> row [
	^ row 
]

{ #category : 'accessing' }
SparseMatrix >> value [ 
	^ value 
]
