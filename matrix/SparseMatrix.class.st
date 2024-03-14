"
The class SparseMatrix
"
Class {
	#name : 'SparseMatrix',
	#superclass : 'Object',
	#instVars : [
		'row',
		'column',
		'value'
	],
	#category : 'matrix',
	#package : 'matrix'
}

{ #category : 'accessing' }
SparseMatrix >> column [
column:= OrderedCollection new.
]

{ #category : 'accessing' }
SparseMatrix >> row [
row:= OrderedCollection new.
]

{ #category : 'accessing' }
SparseMatrix >> value [ 
	^ value 
]
