accessing
pointAtTheta: theta
	"Answer the point on me which is at angle theta."

	| x y |

	x _ a * theta cos.
	y _ b * theta sin.
	^self translateToAbsoluteCoordinates: x@y

