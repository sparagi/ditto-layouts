layout
cacheCountsTotal: totalSubmorphCount horizontal: horizontal
	"Cache rowCount and columnCount based on properties, totalSubmorphCount and horizontal."
	
	rowCount _ properties rowCount.
	columnCount _ properties columnCount.
	(rowCount isNil and: [columnCount isNil]) ifTrue: [
		horizontal
			ifTrue: [rowCount _ 1]
			ifFalse: [columnCount _ 1]].
	rowCount ifNil: [rowCount _ totalSubmorphCount // columnCount].
	columnCount ifNil: [columnCount _ totalSubmorphCount // rowCount].