layout
layoutCenterOf: aMorph in: newBounds 
	"Compute the layout for the center of aMorph inside the given bounds."

	| centerMorph |
	centerMorph := aMorph firstSubmorph.
	centerMorph layoutInBounds: newBounds.
	centerBounds := centerMorph bounds