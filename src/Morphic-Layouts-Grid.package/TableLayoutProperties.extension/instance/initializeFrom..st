*Morphic-Layouts-Grid-initialization
initializeFrom: defaultProvider
	"Initialize myself from a default provider."
	super initializeFrom: defaultProvider.
	self cellInset: defaultProvider cellInset.
	self cellPositioning: defaultProvider cellPositioning.
	self cellSpacing: defaultProvider cellSpacing.
	self layoutInset: defaultProvider layoutInset.
	self listCentering: defaultProvider listCentering.
	self listDirection: defaultProvider listDirection.
	self listSpacing: defaultProvider listSpacing.
	self maxCellSize: defaultProvider maxCellSize.
	self reverseTableCells: defaultProvider reverseTableCells.
	self rubberBandCells: defaultProvider rubberBandCells.
	self wrapCentering: defaultProvider wrapCentering.
	self wrapDirection: defaultProvider wrapDirection.