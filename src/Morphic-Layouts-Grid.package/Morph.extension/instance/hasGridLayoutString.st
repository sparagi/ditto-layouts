*Morphic-Layouts-Grid-layout-menu
hasGridLayoutString
	| layout |
	^ (((layout := self layoutPolicy) notNil
			and: [layout isGridLayout])
		ifTrue: ['<on>']
		ifFalse: ['<off>'])
		, 'grid layout' translated