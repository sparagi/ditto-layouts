accessing
gridSquareFromIndex: linearIndex horizontal: horizontal
	"Answer a Point whose x coordinate is the column index, and y coordinate is the row index, for the given linearIndex given the current columnCount and rowCount and the specified boolean setting for horizontal."

	| indexFrom0 rowFrom0 columnFrom0 |
	self cacheCountsHorizontal: horizontal.
	indexFrom0 _ linearIndex - 1.
	
	horizontal
		ifTrue: [
			rowFrom0 _ indexFrom0 // columnCount.
			columnFrom0 _ indexFrom0 rem: columnCount]
		ifFalse: [
			rowFrom0 _ indexFrom0 rem: rowCount.
			columnFrom0 _ indexFrom0 // rowCount].	
	^(columnFrom0 + 1)@(rowFrom0 + 1)