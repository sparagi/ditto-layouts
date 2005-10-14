layout
minExtentOf: aMorph in: newBounds 
	"Answer the minimal size aMorph's children would require given the  
	new bounds."
	"Since this layout can't be rigid, this means we should lay ourselves out 
	and answer our own bounds."
	^ aMorph extent