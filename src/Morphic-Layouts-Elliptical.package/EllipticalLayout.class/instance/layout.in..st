layout
layout: aMorph in: newBounds 
	"Compute the layout for the given morph based on the new bounds."

	"If the new bounds are the result of a translation transformation on the old bounds, and nothing else has changed, they will be used; otherwise they will be ignored."

	aMorph hasSubmorphs ifFalse: [^self].
	centerBounds ifNil: [self layoutCenterOf: aMorph at: newBounds center]
		ifNotNil: [self layoutCenterOf: aMorph in: aMorph firstSubmorph bounds].
	self layoutEdgesOf: aMorph.
	^self