*Morphic-Layouts-Grid-layout-menu
changeGridLayout
	| layout |
	((layout _ self layoutPolicy) notNil and:[layout isGridLayout])
		ifTrue:[^self]. "already grid layout"
	self layoutPolicy: GridLayout new.
	self layoutPolicy target: self.
	self layoutChanged.