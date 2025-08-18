\name{setwidth-package}
\alias{setwidth-package}
\alias{setwidth}
\docType{package}
\title{
Automatically set the value of options("width") when the terminal emulator is
resized
}
\description{

This package automatically sets \code{options("width")} when using R in terminal windows on OSX or Unix-like OSes and resizing the terminal. It may be useful if \code{options(setWidthOnResize=TRUE)} does not work properly for any reason.

This package should not be used with graphical interfaces such as Windows RGui, RStudio, RKward, JGR, Rcmdr, or any other interface that handles R output on its own. The functions only work if R is compiled for Unix systems (including OSX) and run interactively in a terminal emulator (e.g., iTerm2 on OSX). The terminal emulator may be called by a text editor like Vim, Gedit, Kate, or Geany.
}
\details{
  The package will print information on the R Console if its
  \samp{setwidth.verbose} option was set to a numeric value bigger than zero: 
  
  \preformatted{
  options(setwidth.verbose = 1) # Print startup message
  options(setwidth.verbose = 2) # Print error message when unable to set width
  options(setwidth.verbose = 3) # Print width value
  }
 
  The package does not have any user visible R function. When it is loaded,
  the SIGWINCH signal starts to be handled by a C function that updates the
  value of \code{options("width")}. The handle will not be activated if
  \code{interactive() == FALSE} or the value of the environment variable
  \samp{TERM} is either empty or \samp{"dumb"}.

  To manually test whether the package is working properly on your system you
  may repeatedly resize the terminal emulator and print a long vector, like
  1:300.

  To disable the automatic setting of \code{options("width")} do:

  \preformatted{
  detach("package:setwidth", unload = TRUE)
  }
}
\author{
Jakson Alves de Aquino and Dominique-Laurent Couturier
}

\seealso{
  The package \pkg{colorout} colorizes R output when running in a unix/osx terminal emulators.
}

\examples{
options(setwidth.verbose = 1)
print(getOption("width"))
}
\keyword{ package }
