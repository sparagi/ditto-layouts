accessing
xRadius: aNumber yRadius: anotherNumber
	"Set my radii."

	(aNumber >= anotherNumber)
		ifTrue: [
			a _ aNumber.
			b _ anotherNumber.
			aDirection _ 1@0 ]
		ifFalse: [
			a _ anotherNumber.
			b _ aNumber.
			aDirection _ 0@1 ]


