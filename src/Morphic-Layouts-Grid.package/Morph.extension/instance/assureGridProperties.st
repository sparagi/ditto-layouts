*Morphic-Layouts-Grid-layout-properties
assureGridProperties
	| props |
	props _ self layoutProperties.
	props == self ifTrue:[props _ nil].
	props ifNil:[
		props _ GridLayoutProperties new initializeFrom: self.
		self layoutProperties: props].
	props includesGridProperties 
		ifFalse:[self layoutProperties: (props _ props asGridLayoutProperties)].
	^props