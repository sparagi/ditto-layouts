*Morphic-Layouts-Menu
addLayoutMenuItems: topMenu hand: aHand
	| aMenu |
	aMenu _ MenuMorph new defaultTarget: self.
	aMenu addUpdating: #hasNoLayoutString action: #changeNoLayout.
	LayoutPolicy allSubclassesDo: [:policy | policy addLayoutMenuItems: aMenu].
	aMenu addLine.
	aMenu add: 'change layout inset...' translated action: #changeLayoutInset:.
	aMenu addLine.
	self addCellLayoutMenuItems: aMenu hand: aHand.
	LayoutProperties allSubclassesDo: [:properties | properties addLayoutMenuItems: aMenu].
	topMenu ifNotNil:[topMenu add: 'layout' translated subMenu: aMenu].
	^aMenu