utilities
indexForInserting: aMorph at: aPoint in: someMorph
	"Return the insertion index based on my layout strategy. Used for drop insertion."
	| outerEllipse |

	^(centerBounds containsPoint: aPoint) 
		"If aPoint is inside the center morph, insert aMorph at index 2."
		ifTrue: [2]
		ifFalse: [
			outerEllipse _ ellipse growBy: ellipseSpacing.
			(outerEllipse containsPoint: aPoint) 
				"If aPoint is outside the outermost ellipse by more than ellipseSpacing, insert aMorph at the end."
				ifFalse: [someMorph submorphs size + 1]
				"Otherwise, find the submorph whose center is closest to aPoint, and insert aMorph at that index."
				ifTrue: [2 max: (someMorph submorphIndexOf: (someMorph closestSubmorphTo: aPoint))]].
