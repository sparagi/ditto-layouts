*Morphic-Layouts-Grid-layout-properties
rowCount: anInteger
	"Layout specific.  In a list-like layout, set how many rows my submorphs should appear in. Nil indicates that the number of rows should be calculated from the number of columns and the number of submorphs."
	self assureGridProperties rowCount: anInteger.
	self layoutChanged
