geometry
containsPoint: aPoint
	"Answer whether I contain aPoint."

	^((center dist: (self pointNearestTo: aPoint)) >= (center dist: aPoint))
