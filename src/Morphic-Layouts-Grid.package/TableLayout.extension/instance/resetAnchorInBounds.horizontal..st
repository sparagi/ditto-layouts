*Morphic-Layouts-Grid
resetAnchorInBounds: newBounds horizontal: aBool
	"Set my anchor, xDir and yDir in preparation for doing the actual placement."

	aBool 
		ifTrue: 
			["horizontal layout"

			properties listDirection == #rightToLeft 
				ifTrue: 
					[xDir := -1 @ 0.
					properties wrapDirection == #bottomToTop 
						ifTrue: 
							[yDir := 0 @ -1.
							anchor := newBounds bottomRight]
						ifFalse: 
							[yDir := 0 @ 1.
							anchor := newBounds topRight]]
				ifFalse: 
					[xDir := 1 @ 0.
					properties wrapDirection == #bottomToTop 
						ifTrue: 
							[yDir := 0 @ -1.
							anchor := newBounds bottomLeft]
						ifFalse: 
							[yDir := 0 @ 1.
							anchor := newBounds topLeft]]]
		ifFalse: 
			["vertical layout"

			properties listDirection == #bottomToTop 
				ifTrue: 
					[xDir := 0 @ -1.
					properties wrapDirection == #rightToLeft 
						ifTrue: 
							[yDir := -1 @ 0.
							anchor := newBounds bottomRight]
						ifFalse: 
							[yDir := 1 @ 0.
							anchor := newBounds bottomLeft]]
				ifFalse: 
					[xDir := 0 @ 1.
					anchor := properties wrapDirection == #rightToLeft 
								ifTrue: 
									[yDir := -1 @ 0.
									newBounds topRight]
								ifFalse: 
									[yDir := 1 @ 0.
									newBounds topLeft]]].