*Morphic-Layouts-Menu
addLayoutMenuItems: aMenu
	"Add menu items to aMenu so user can select appropriate properties to lay out the given Morph.  The Morph is the default target of the menu."
	
	| menu sub aMorph |
	aMorph _ aMenu defaultTarget.
	menu _ MenuMorph new defaultTarget: aMorph.
	menu addUpdating: #hasReverseCellsString action: #changeReverseCells.
	menu addUpdating: #hasClipLayoutCellsString action: #changeClipLayoutCells.
	menu addUpdating: #hasRubberBandCellsString action: #changeRubberBandCells.
	menu addLine.
	menu add: 'change cell inset...' translated action: #changeCellInset:.
	menu add: 'change min cell size...' translated action: #changeMinCellSize:.
	menu add: 'change max cell size...' translated action: #changeMaxCellSize:.
	menu addLine.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(leftToRight rightToLeft topToBottom bottomToTop) do:[:sym|
		sub addUpdating: #listDirectionString: target: aMorph selector: #changeListDirection: argumentList: (Array with: sym)].
	menu add: 'list direction' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(none leftToRight rightToLeft topToBottom bottomToTop) do:[:sym|
		sub addUpdating: #wrapDirectionString: target: aMorph selector: #wrapDirection: argumentList: (Array with: sym)].
	menu add: 'wrap direction' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(center topLeft topRight bottomLeft bottomRight topCenter leftCenter rightCenter bottomCenter) do:[:sym|
		sub addUpdating: #cellPositioningString: target: aMorph selector: #cellPositioning: argumentList: (Array with: sym)].
	menu add: 'cell positioning' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(topLeft bottomRight center justified) do:[:sym|
		sub addUpdating: #listCenteringString: target: aMorph selector: #listCentering: argumentList: (Array with: sym)].
	menu add: 'list centering' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(topLeft bottomRight center justified) do:[:sym|
		sub addUpdating: #wrapCenteringString: target: aMorph selector: #wrapCentering: argumentList: (Array with: sym)].
	menu add: 'wrap centering' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(none equal) do:[:sym|
		sub addUpdating: #listSpacingString: target: aMorph selector: #listSpacing: argumentList: (Array with: sym)].
	menu add: 'list spacing' translated subMenu: sub.

	sub _ MenuMorph new defaultTarget: aMorph.
	#(none localRect localSquare globalRect globalSquare) do:[:sym|
		sub addUpdating: #cellSpacingString: target: aMorph selector: #cellSpacing: argumentList: (Array with: sym)].
	menu add: 'cell spacing' translated subMenu: sub.

	aMenu ifNotNil:[aMenu add: 'table layout' translated subMenu: menu].
	^menu
	