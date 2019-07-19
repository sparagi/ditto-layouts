# Ditto Morphic Layouts

This package adds 2 additional layout policies to Morphic:

 * GridLayout
 * EllipticalLayout

This requires changes to Morph>>addLayoutMenuItems:hand: and related methods. These changes do not affect the behavior of the layout menu (as compared to the layout menu in the stock 3.7 image), but do enable multiple new subclasses of LayoutPolicy and LayoutProperties to add their own menu items without causing conflicts.

This package is very, very alpha.  

## GridLayout

A GridLayout is very similar to a TableLayout.  Here are the differences:

 - rowCount and columnCount in GridLayoutProperties explicitly control the number of rows and columns
 - each row and column is of uniform height or width, i.e. all Morphs in a row have the same height (that of the tallest Morph in the row), and all Morphs in a column have the same width
    
Because you can control rowCount and columnCount, you probably will also want to control the row & column of each submorph; you can do this using a vile hack like this:
    
    row := self rowCount + 1.
    self rowCount: row.
    self addMorph: newMorph asElementNumber:
            (self layoutPolicy indexFromGridSquare: 1@row horizontal: true).

This would add newMorph at the beginning of a new last row.

I have tested most of the setting combinations in the table layout menu, but I have not tested everything, e.g. dropping a Morph in a Morph using a GridLayout.

## EllipticalLayout

An EllipticalLayout places the first submorph of some morph in the center, and the remaining morphs on concentric ellipses around the first submorph.

## Credits
    
Thanks to Craig Latta & Tim Rowledge for their useful advice.
    
