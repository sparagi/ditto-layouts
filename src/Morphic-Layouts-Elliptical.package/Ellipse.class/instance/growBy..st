copying
growBy: anAmount
	"Answer a new instance with radii increased by anAmount."

	| answer |
	answer _ (self copy) a: a + anAmount; b: b + anAmount.
	^answer

