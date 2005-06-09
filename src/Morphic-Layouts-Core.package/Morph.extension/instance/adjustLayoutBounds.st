*Morphic-Layouts-Core-layout
adjustLayoutBounds
	"Adjust the receivers bounds depending on the resizing strategy imposed"
	| hFit vFit box myExtent extent |
	hFit _ self hResizing.
	vFit _ self vResizing.
	(hFit == #shrinkWrap or:[vFit == #shrinkWrap]) ifFalse:[^self]. "not needed"
	(hFit == #shrinkWrap and:[vFit == #shrinkWrap]) ifTrue:[^self layoutBounds: self submorphBounds].
	box _ self layoutBounds.
	myExtent _ box extent.
	extent _ self submorphBounds extent.
	hFit == #shrinkWrap ifTrue:[myExtent _ extent x @ myExtent y].
	vFit == #shrinkWrap ifTrue:[myExtent _ myExtent x @ extent y].
	"Make sure we don't get smaller than minWidth/minHeight"
	myExtent x < self minWidth ifTrue:[
		myExtent _ (myExtent x max: 
			(self minWidth - self bounds width + self layoutBounds width)) @ myExtent y].
	myExtent y < self minHeight ifTrue:[
		myExtent _ myExtent x @ (myExtent y max:
			(self minHeight - self bounds height + self layoutBounds height))].
	self layoutBounds: (box origin extent: myExtent).