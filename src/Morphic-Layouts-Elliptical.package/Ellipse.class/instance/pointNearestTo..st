accessing
pointNearestTo: aPoint
	"Answer the point on me which lies nearest to aPoint."
	"Translate aPoint into my coordinate system, then use its theta to find the point on me which lies along that vector."

	| p theta x y |

	p _ self translateToRelativeCoordinates: aPoint.
	theta _ p theta.
	x _ a * theta cos.
	y _ b * theta sin.
	^self translateToAbsoluteCoordinates: x@y

