translating
translateToAbsoluteCoordinates: aPoint
	"Given aPoint in my coordinate system, answer the equivalent point in the absolute coordinate system."

	^(aPoint rotateBy: aDirection theta about: 0@0) translateBy: center.
