*Morphic-Layouts-Grid-layout-properties
columnCount: anInteger
	"Layout specific.  In a list-like layout, set how many columns my submorphs should appear in.  Nil indicates that the number of columns should be calculated from the number of rows and the number of submorphs."
	self assureGridProperties columnCount: anInteger.
	self layoutChanged

