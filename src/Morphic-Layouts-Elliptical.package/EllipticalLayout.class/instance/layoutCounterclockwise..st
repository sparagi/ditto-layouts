layout
layoutCounterclockwise: aMorph
	"Place aMorph in the next available counterclockwise spot on the current ellipse."

	| theta overlap |

	theta _ counterclockwiseTheta - deltaTheta.
	aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).

	overlap _ aMorph bounds intersect: counterclockwiseMorph bounds.
	[ (overlap width min: overlap height) > 12 ]
		whileTrue: [
			"get further away" 
			theta _ theta - 0.05.
			aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).
			overlap _ aMorph bounds intersect: counterclockwiseMorph bounds ].
	[ (overlap width min: overlap height) < 8 ]
		whileTrue: [
			"get closer"
			theta _ theta + 0.05.
			aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).
			overlap _ aMorph bounds intersect: counterclockwiseMorph bounds ].
	(clockwiseMorph = counterclockwiseMorph)
		ifFalse: [
			overlap _ aMorph bounds intersect: clockwiseMorph bounds.
			((overlap width min: overlap height) > 12)
				ifTrue: [
					self growEllipse.
					^self layoutEdgeMorph: aMorph ]].

	deltaTheta _ (theta - counterclockwiseTheta) abs.
	counterclockwiseTheta _ theta.
	counterclockwiseMorph _ aMorph.
	nextPlacement _ #layoutClockwise:
