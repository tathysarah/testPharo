Class {
	#name : 'SparseMatrixTest',
	#superclass : 'TestCase',
	#category : 'matrix',
	#package : 'matrix'
}

{ #category : 'tests' }
SparseMatrixTest >> testMatrixSizeIsDone [ 

| simpleMatrix sparseM| 
simpleMatrix := #((0 0 3 0 4) ( 0 0 5 7 0) (0 0 0 0 0) (0 2 6 0 0)). 
sparseM := SparseMatrix new. 
sparseM fromSimpleMatrix: simpleMatrix.
self assert: (sparseM columns size) equals: 6.
self assert: (sparseM rows size) equals: 6.
self assert: (sparseM values size) equals: 6. 

]
