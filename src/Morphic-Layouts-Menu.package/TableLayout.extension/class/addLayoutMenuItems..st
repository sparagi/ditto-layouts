*Morphic-Layouts-Menu
addLayoutMenuItems: aMenu
	"Add menu items to aMenu so user can choose me to lay out the given Morph.  The Morph is the default target of the menu."
	
	aMenu addUpdating: #hasTableLayoutString action: #changeTableLayout.