*Morphic-Layouts-Grid-layout-properties
columnCount
	"Layout specific.  In a list-like layout, answer how many columns my submorphs should appear in.  Nil indicates that the number of columns should be calculated from the number of rows and the number of submorphs."
	| props |
	props _ self layoutProperties.
	^props ifNil: [nil] ifNotNil: [props columnCount]

