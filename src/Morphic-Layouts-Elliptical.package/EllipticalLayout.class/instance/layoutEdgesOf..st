layout
layoutEdgesOf: aMorph 
	"Compute the layout for the edges of aMorph, centered at aPoint."

	"Find our edge subMorphs."

	| edgeMorphs |
	edgeMorphs := aMorph submorphs allButFirst.
	edgeMorphs isEmpty 
		ifFalse: 
			[self resetEllipseForMorphSize: edgeMorphs first bounds.
			edgeMorphs do: [:m | self layoutEdgeMorph: m]]