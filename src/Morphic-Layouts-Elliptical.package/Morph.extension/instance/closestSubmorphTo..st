*Morphic-Layouts-Elliptical-submorphs-accessing
closestSubmorphTo: aPoint
	"Answer the submorph whose center is closest to aPoint."
	"If more than one submorph is the same distance from aPoint, answer any of them."

	| shortestDistance closestSubmorph |
	closestSubmorph _ self firstSubmorph.
	shortestDistance _ aPoint dist: closestSubmorph bounds center.
	self submorphsDo: [ :m | | distance |
		distance _ aPoint dist: m bounds center.
		distance < shortestDistance ifTrue: [
			shortestDistance _ distance.
			closestSubmorph _ m ]].
	^closestSubmorph
