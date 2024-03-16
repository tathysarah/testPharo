Class {
	#name : 'SparseMatrixTest',
	#superclass : 'TestCase',
	#category : 'matrix',
	#package : 'matrix'
}

{ #category : 'tests' }
SparseMatrixTest >> testMatrixIsDone [ 

| simpleMatrix sparseM| 
simpleMatrix := #((0 0 3 0 4) ( 0 0 5 7 0) (0 0 0 0 0) (0 2 6 0 0)). 
sparseM := SparseMatrix new. 
"sparseM nbColumns: simpleMatrix.
sparseM nbRows: simpleMatrix." 
self assert: sparseM equals: #((0 0 1 1 3 3) (2 4 2 3 1 2) (3 4 5 7 2 6)). 

]
