layout
flushLayoutCache
	"Flush any cached information associated with the receiver"
	"If you flush centerBounds, the Morph will move around when it shouldn't; everything else is automatically reset when it needs to be in resetEllipseForMorphSize:.  We can't reset things here because we need the bounds of the first edge submorph to do so."

	
