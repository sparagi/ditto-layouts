accessing
length
	"Answer my circumference."
	"Equation snagged from http://mathforum.org/dr.math/faq/formulas/faq.ellipse.html"
	| pi x threeXSquared |

	pi _ Float pi.
	x _ (a-b)/(a+b).
	threeXSquared _ 3 * (x squared).

	^pi * (a+b) * (1 + (threeXSquared/(10 + (4 - threeXSquared) sqrt))) 
