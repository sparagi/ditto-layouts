layout
layoutNowhere: aMorph
	"Place aMorph at the top or bottom of the current ellipse."

	| theta |

	startAtTop
		ifTrue: [ theta _ (Float halfPi) * 3 ]
		ifFalse: [ theta _ Float halfPi ].
	aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).
	clockwiseTheta _ counterclockwiseTheta _ theta.
	clockwiseMorph _ counterclockwiseMorph _ aMorph.
	nextPlacement _ #layoutClockwise:
