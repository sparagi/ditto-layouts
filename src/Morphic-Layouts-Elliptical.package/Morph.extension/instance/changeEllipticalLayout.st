*Morphic-Layouts-Elliptical-layout-menu
changeEllipticalLayout
	| layout |
	((layout _ self layoutPolicy) notNil and:[layout isEllipticalLayout])
		ifTrue:[^self]. "I already have an elliptical layout."
	self layoutPolicy: EllipticalLayout new.
	self layoutChanged.