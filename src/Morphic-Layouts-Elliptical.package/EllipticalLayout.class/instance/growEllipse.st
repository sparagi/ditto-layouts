layout
growEllipse
	"Set the ellipse on which to place morphs to the next larger ellipse."

	ellipse _ ellipse growBy: ellipseSpacing.
	nextPlacement _ #layoutNowhere: .
	startAtTop 
		ifTrue: [ startAtTop _ false ]
		ifFalse: [ startAtTop _ true ].

	deltaTheta _ 0.1