layout
placeCells: arrangement in: newBounds horizontal: aBool target: aMorph 
	"Place the morphs within the cells accordingly"

	| inset cellSize diagonalDir newLayoutBounds hShrink vShrink xInset yInset |
	self resetAnchorInBounds: newBounds horizontal: aBool.
	hShrink _ properties hResizing == #shrinkWrap.
	vShrink _ properties vResizing == #shrinkWrap.
	inset _ properties cellInset.
	inset isNumber ifTrue: [
		inset isZero
			ifTrue: [inset _ nil]
			ifFalse: [inset _ Rectangle origin: inset@inset corner: inset@inset]].
	inset isPoint
		ifTrue: [inset _ Rectangle origin: inset corner: inset].

	inset
		ifNotNil: [
			xInset _ (inset origin x + inset corner x)@0.
			yInset _ 0@(inset origin y + inset corner y).
			xInset * xDir = (0@0) ifTrue: [ | tmp |
				tmp _ xInset.
				xInset _ yInset.
				yInset _ tmp ]]
		ifNil: [
			xInset _ 0@0.
			yInset _ 0@0].

	diagonalDir _ xDir + yDir.
	
	hShrink ifFalse: [anchor _ anchor + ((inset origin x)@0)].
	vShrink ifFalse: [anchor _ anchor + (0@(inset origin y))].
	
	1 to: rowCount do: [:row | | rowAnchor |
		rowAnchor _ anchor.
		1 to: columnCount do: [:column | | cell linearIndex targetBounds |
			linearIndex _ self indexFromGridSquare: column@row horizontal: aBool.
			cell _ arrangement at: linearIndex ifAbsent: [nil].
			cell ifNotNil: [
				cellSize _ cell cellSize.
				targetBounds _ Rectangle origin: anchor asPoint extent: (cellSize * diagonalDir).
				cell target layoutInBounds: targetBounds.
				anchor _ anchor + ((cellSize + xInset) * xDir)]].
		anchor _ rowAnchor + ((cellSize + yInset) * yDir)].		
		
	newLayoutBounds _ aMorph boundingBoxOfSubmorphs.
	inset ifNotNil: [
		hShrink ifTrue: [inset _ Rectangle origin: 0@inset origin y corner: 0@inset corner y].
		vShrink ifTrue: [inset _ Rectangle origin: inset origin x@0 corner: inset corner x@0].
		newLayoutBounds _ newLayoutBounds outsetBy: inset ].
	aMorph layoutBounds: newLayoutBounds
	