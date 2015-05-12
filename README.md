Photo_Editor
============
This is a collection of MatLab scripts developed to do photo-editing on underlying matrix of numbers. I have some success on removing fine dust, but am still working on dealing with larger problems such as water stains. The photo labelled third-mash10 represents the best removal of damaged pixels, however it came at the sacrifice of the other pixels.  I would like to apply mash technique to subblocks of the matrix to alleviate this effect.  The photos are numbered by the number of eigenvalues/vectors used to reconstruct the photo matrix in svd.

The original photo had over 1000 eigenvalue/vectors for  L*L'  The main script to accomplish this is the mash.m script.
block.m and switcher.m represent futher ideas on photo manipulation
