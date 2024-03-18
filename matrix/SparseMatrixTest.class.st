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
self assert: (sparseM printSparseMatrix size) equals: 3.


]

{ #category : 'tests' }
SparseMatrixTest >> testPrintSparseMatrix [ 

| simpleMatrix sparseM| 
simpleMatrix := #((0 0 3 0 4) ( 0 0 5 7 0) (0 0 0 0 0) (0 2 6 0 0)). 
sparseM := SparseMatrix new. 
sparseM fromSimpleMatrix: simpleMatrix.
self assert: (sparseM printSparseMatrix) equals: #(#(0 0 1 1 3 3) #(2 4 2 3 1 2) #(3 4 5 7 2 6)).
]

{ #category : 'tests' }
SparseMatrixTest >> testgetOriginalMatrix [ 

| simpleMatrix sparseM| 
simpleMatrix := #((0 0 3 0 4) ( 0 0 5 7 0) (0 0 0 0 0) (0 2 6 0 0)). 
sparseM := SparseMatrix new. 
sparseM fromSimpleMatrix: simpleMatrix.
sparseM getOriginalMatrix. 
]
