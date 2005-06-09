layout
cacheCountsHorizontal: horizontal
	"Cache rowCount and columnCount based on current values, properties, and horizontal."
	
	| realRowCount realColumnCount |
	realRowCount _ properties rowCount.
	realColumnCount _ properties columnCount.
	(realRowCount isNil or: [realColumnCount isNil]) ifFalse: [
		rowCount _ realRowCount.
		columnCount _ realColumnCount].