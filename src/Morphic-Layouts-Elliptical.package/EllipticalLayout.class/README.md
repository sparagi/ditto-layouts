My instances implement a layout that places the first submorph of some morph in the center, and the remaining morphs on concentric ellipses around the first submorph.

Results will be unpredictable unless hResizing and vResizing are both #shrinkWrap.

The main entry point is layout:in:.  Edge morphs (all but the first submorph) are laid out in layoutEdgeMorph:, which uses perform:with: to do different kinds of placement (thanks to Tim Rowledge for this idea).  The kinds of placement are always used in the same order, that is: #layoutNowhere:, #layoutClockwise:, #layoutCounterclockwise:, #layoutClockwise:, #layoutCounterclockwise:, ...  When an ellipse is filled, the sequence of placements starts over on the next size larger ellipse.

You might be interested in The Making of EllipticalLayout, on the Swiki at http://minnow.cc.gatech.edu/squeak/3370 .

