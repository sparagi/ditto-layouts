*Morphic-Layouts-Grid
placeCells: arrangement in: newBounds horizontal: aBool target: aMorph 
	"Place the morphs within the cells accordingly"

	| yDist place cell xDist cellRect corner inset |
	inset := properties cellInset.
	(inset isNumber and: [inset isZero]) ifTrue: [inset := nil].
	self resetAnchorInBounds: newBounds horizontal: aBool.
		
	1 to: arrangement size
		do: 
			[:i | 
			cell := arrangement at: i.
			cell extraSpace ifNotNil: [anchor := anchor + (cell extraSpace y * yDir)].
			yDist := cell cellSize y * yDir.	"secondary advance direction"
			place := anchor.
			cell := cell nextCell.
			[cell isNil] whileFalse: 
					[cell extraSpace ifNotNil: [place := place + (cell extraSpace x * xDir)].
					xDist := cell cellSize x * xDir.	"primary advance direction"
					corner := place + xDist + yDist.
					cellRect := Rectangle origin: (place min: corner)
								corner: (place max: corner).
					inset ifNotNil: [cellRect := cellRect insetBy: inset].
					cell target layoutInBounds: cellRect.
					place := place + xDist.
					cell := cell nextCell].
			anchor := anchor + yDist]