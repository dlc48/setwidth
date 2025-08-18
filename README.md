

# 'setwidth' R package <a href="https://github.com/dlc48/setwidth"><img src="doc/hex-.functions().png" alt="" align="right" height="138" width="125" /></a>


<h2>Description</h2> 

This package automatically sets `options("width")` when using R in terminal windows on OSX or Unix-like OSes and resizing the terminal. It may be useful if `options(setWidthOnResize=TRUE)` does not work properly for any reason.

This package should not be used with graphical interfaces such as Windows RGui, RStudio, RKward, JGR, Rcmdr, or any other interface that handles R output on its own. The functions only work if R is compiled for Unix systems (including OSX) and run interactively in a terminal emulator (e.g., iTerm2 on OSX). The terminal emulator may be called by a text editor like Vim, Gedit, Kate, or Geany.



<h2>Installation instructions</h2> 

To install the dotfunctions package from GitHub run

```r
install.packages("devtools")
devtools::install_github("dlc48/setwidth")
```


