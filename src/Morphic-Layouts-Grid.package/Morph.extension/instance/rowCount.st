*Morphic-Layouts-Grid-layout-properties
rowCount
	"Layout specific.  In a list-like layout, answer how many rows my submorphs should appear in.  Nil indicates that the number of rows should be calculated from the number of columns and the number of submorphs."
	| props |
	props _ self layoutProperties.
	^props ifNil: [nil] ifNotNil: [props rowCount]

