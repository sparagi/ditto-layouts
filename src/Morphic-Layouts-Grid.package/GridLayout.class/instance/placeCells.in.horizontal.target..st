layout
placeCells: arrangement in: newBounds horizontal: aBool target: aMorph 
	"Place the morphs within the cells accordingly"

	| inset cellSize diagonalDir |
	inset _ properties cellInset.
	(inset isNumber and: [inset isZero]) ifTrue: [inset := nil].
	self resetAnchorInBounds: newBounds horizontal: aBool.
	diagonalDir _ xDir + yDir.
	
	1 to: rowCount do: [:row | | rowAnchor |
		rowAnchor _ anchor.
		1 to: columnCount do: [:column | | cell linearIndex targetBounds |
			linearIndex _ self indexFromGridSquare: column@row horizontal: aBool.
			cell _ arrangement at: linearIndex ifAbsent: [nil].
			cell ifNotNil: [
				cellSize _ cell cellSize.
				targetBounds _ Rectangle origin: anchor asPoint extent: (cellSize * diagonalDir).
				inset ifNotNil: [targetBounds _ targetBounds insetBy: inset].
				cell target layoutInBounds: targetBounds.
				anchor _ anchor + (cellSize * xDir)]].
		anchor _ rowAnchor + (cellSize * yDir)].		
		
	aMorph layoutBounds: aMorph boundingBoxOfSubmorphs

	