*Morphic-Layouts-Grid-converting
asGridLayoutProperties
	"Answer a new instance of GridLayoutProperties, similar to myself."
	^(GridLayoutProperties new)
		initializeFrom: self;
		yourself