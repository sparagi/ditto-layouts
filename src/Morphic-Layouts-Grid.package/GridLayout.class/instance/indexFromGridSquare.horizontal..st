accessing
indexFromGridSquare: aPoint horizontal: horizontal
	"Answer an Integer which is the linear index for aPoint, whose x coordinate is the column index, and y coordinate is the row index, given the current columnCount and rowCount and the specified boolean setting for horizontal."

	| indexFrom0 rowFrom0 columnFrom0 |
	self cacheCountsHorizontal: horizontal.
	
	rowFrom0 _ aPoint y - 1.
	columnFrom0 _ aPoint x - 1.
	horizontal
		ifTrue: [indexFrom0 _ (rowFrom0 * columnCount) + columnFrom0]
		ifFalse: [indexFrom0 _ (columnFrom0 * rowCount) + rowFrom0].
	^indexFrom0 + 1