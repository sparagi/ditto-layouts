layout
layoutClockwise: aMorph
	"Place aMorph in the next available clockwise spot on the current ellipse."

	| theta overlap |

	theta _ clockwiseTheta + deltaTheta.
	aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).

	overlap _ aMorph bounds intersect: clockwiseMorph bounds.
	[ (overlap width min: overlap height) > 12 ]
		whileTrue: [
			"get further away" 
			theta _ theta + 0.05.
			aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).
			overlap _ aMorph bounds intersect: clockwiseMorph bounds ].
	[ (overlap width min: overlap height) < 8 ]
		whileTrue: [
			"get closer"
			theta _ theta - 0.05.
			aMorph position: (ellipse pointAtTheta: theta) - (aMorph extent // 2).
			overlap _ aMorph bounds intersect: clockwiseMorph bounds ].
	(clockwiseMorph = counterclockwiseMorph)
		ifFalse: [
			overlap _ aMorph bounds intersect: counterclockwiseMorph bounds.
			((overlap width min: overlap height) > 12)
				ifTrue: [
					self growEllipse.
					^self layoutEdgeMorph: aMorph]].

	deltaTheta _ theta - clockwiseTheta.
	clockwiseTheta _ theta.
	clockwiseMorph _ aMorph.
	nextPlacement _ #layoutCounterclockwise:
