layout
cellArrangementFor: aMorph horizontal: horizontal
	"Answer an Array whose size is (columnCount * rowCount), and which contains LayoutCells in which to place Morphs in this grid."

	| submorphs output previousCell rowHeight columnWidth |
	submorphs _ aMorph submorphs.
	rowHeight _ Array new: rowCount.
	columnWidth _ Array new: columnCount.

	1 to: submorphs size do: [:linearIndex | | index row column submorph currentColumnMax currentRowMax | 
		index _ self gridSquareFromIndex: linearIndex horizontal: horizontal.
		column _ index x.
		row _ index y.
		submorph _ submorphs at: linearIndex.
		
		currentColumnMax _ columnWidth at: column.
		currentColumnMax ifNil: [currentColumnMax _ 0].
		currentRowMax _ rowHeight at: row.
		currentRowMax ifNil: [currentRowMax _ 0].
		
		columnWidth at: column put: (currentColumnMax max: submorph width).
		rowHeight at: row put: (currentRowMax max: submorph height)].
	
	output _ WriteStream on: Array new.
	1 to: submorphs size do: [:linearIndex | | index row column cell |
		index _ self gridSquareFromIndex: linearIndex horizontal: horizontal.
		column _ index x.
		row _ index y.

		cell _ LayoutCell new.
		cell cellSize: (columnWidth at: column) @ (rowHeight at: row).	
		cell target: (submorphs at: linearIndex).
		linearIndex = 1 ifFalse: [previousCell nextCell: cell].
		output nextPut: cell.
		previousCell _ cell].
	
	^output contents