translating
translateToRelativeCoordinates: aPoint
	"Given aPoint in absolute coordinates, answer the equivalent point in my coordinate system."

	^(aPoint translateBy: (center negated)) rotateBy: (2 * Float pi) - (aDirection theta) about: 0@0.
