layout
resetEllipseForMorphSize: morphBounds
	"Set the ellipse on which to place morphs to the smallest possible ellipse."

	"Use the first image to decide the ellipse spacing."
	ellipseSpacing _ (morphBounds width max: morphBounds height) * 3 / 4.

	ellipse _ Ellipse
		center: centerBounds center 
		xRadius: centerBounds width + ellipseSpacing
		yRadius: centerBounds height + ellipseSpacing.

	nextPlacement _ #layoutNowhere:.
	startAtTop _ true.
	deltaTheta _ 0.1
