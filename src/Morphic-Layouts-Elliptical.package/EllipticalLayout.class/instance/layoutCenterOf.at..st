layout
layoutCenterOf: aMorph at: aPoint 
	"Compute the layout for the center of aMorph centered at aPoint."

	| centerMorph |
	centerMorph := aMorph firstSubmorph.
	centerMorph align: centerMorph center with: aPoint.
	centerBounds := centerMorph bounds