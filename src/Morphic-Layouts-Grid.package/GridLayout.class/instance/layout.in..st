layout
layout: aMorph in: newBounds
	"Lay aMorph's submorphs out inside newBounds."

	| arrangement horizontal |
	aMorph hasSubmorphs ifFalse: [^self].
	
	properties _ aMorph assureGridProperties.
	horizontal _ (properties listDirection == #topToBottom 
					or: [properties listDirection == #bottomToTop]) not.
	self cacheCountsTotal: aMorph submorphs size horizontal: horizontal.
	
	arrangement _ self cellArrangementFor: aMorph horizontal: horizontal.
	self placeCells: arrangement in: newBounds horizontal: horizontal target: aMorph.

	