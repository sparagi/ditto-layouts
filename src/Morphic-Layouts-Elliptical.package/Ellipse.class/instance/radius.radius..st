accessing
radius: aNumber radius: anotherNumber
	"Set my radii."
	
	(aNumber >= anotherNumber)
		ifTrue: [
			a _ aNumber.
			b _ anotherNumber ]
		ifFalse: [
			a _ anotherNumber.
			b _ aNumber ].
	self discardApproximations


