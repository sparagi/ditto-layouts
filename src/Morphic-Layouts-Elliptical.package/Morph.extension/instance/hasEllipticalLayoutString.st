*Morphic-Layouts-Elliptical-layout-menu
hasEllipticalLayoutString
	| layout |
	^((layout _ self layoutPolicy) notNil and:[layout isEllipticalLayout])
		ifTrue:['<on>elliptical layout']
		ifFalse:['<off>elliptical layout'].