layout
layoutEdgeMorph: aMorph
	"Place aMorph in the next available slot."
	"Thanks to Tim Rowledge for the idea of using perform:with: in this way."

	self perform: nextPlacement with: aMorph.
