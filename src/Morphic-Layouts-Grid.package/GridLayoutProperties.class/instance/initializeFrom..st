initialization
initializeFrom: defaultProvider
	"Initialize myself from a default provider."
	super initializeFrom: defaultProvider.
	self rowCount: defaultProvider rowCount.
	self columnCount: defaultProvider columnCount.