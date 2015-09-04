\name{ncomb.prob}
\alias{ncomb.prob}
\title{
Combination of probability distributions.
}
\description{
  It computes the combination of probability distributions according to few parameters.
}
\usage{  
  ncomb.prob(x, y = NULL, independent = !is_nothing(nsample),
      lower.plausible = 0, upper.plausible = 1, method.name = character(0), 
      nsample = numeric(0), tolerance = 0.005, arithmetic = TRUE,
      loss.type = c("information","quadratic","harmonic","geometric","logarithmic",
                    "evidential"), plots = FALSE,...)
}

\arguments{
  \item{x}{List of numeric vectors of probabilities or a numeric vector of probabilities (see note).}
  \item{y}{A numeric vector of probabilities. Default is NULL (see note).}
  %\item{object}{A numeric vector of probabilities, a list of probabilities or a probs.to.combine data structure.}
  \item{tolerance}{Small quantity to control the failure of the method.}
  \item{independent}{Logical. If independent=TRUE, one weight is computed, otherwise one weight is computed per pair of elements to be combined (see note).}
  \item{lower.plausible}{A number within [0,1].}
  \item{upper.plausible}{A number within [0,1].}
  \item{method.name}{Names of the probabilities distributions to be combined.}
  \item{nsample}{Number of samples (for Monte Carlo).}
  \item{arithmetic}{Logical. If arithmetic=FALSE, the logarithmic approach is applied.}
  %\item{verbose}{if TRUE, it prints in screen some information about the ongoing process.}
  \item{loss.type}{specifies loss function type: "information", "quadratic", "harmonic", "geometric", "logarithmic", "evidential".}
  \item{plots}{option to plot (plot=TRUE) the input and output probabilities.}
  \item{\dots}{Other numeric vectors of probabilities to combine and further arguments passed to function optimize.}
}
\note{
-  All input vectors elements must be within [0,1]
  
-  If input vectors do not have names, they will be created (see examples).

-  Elements of different vectors with same names are those to be combined.

-  If the input y = NULL and x is a numeric vector all its elements will be combined. 
% More than 2 probabilities to combine and independent=TRUE is not yet implemented.
}

\value{
A list:
\item{combined}{A numeric vector that results of the combination of the data.}
\item{weight}{Computed weights: a numeric value (if input independent=TRUE) or vector (if input independent=FALSE) with elements in [0,1].}
\item{info}{Other information.}
}
\references{
Bickel, D. R. (2012). Game-theoretic probability combination with applications to resolving conflicts between statistical methods. International Journal of Approximate Reasoning, 53, 880-891.
}
\author{
Code: David R. Bickel and Marta Padilla (modifications)\cr
Documentation: Alaa Ali and Marta Padilla
}

\examples{
  #Two probability distributions to combine
x1<-c(a = 0.5, b = 0.2, d = NA, e = 0, 0.3, 0.8)
x2<-c(b = 0.4, a = 0.3, e = NA, b = 0.2 , 0.13, 0.28)

z1 <- ncomb.prob(x = x1,y= x2,independent=TRUE)
z2 <- ncomb.prob(x = list(X1=x1,X2=x2),independent=FALSE)

#not yet implemented for independent=TRUE:
z3 <- ncomb.prob(x = x1,independent=FALSE,loss.type="quadratic")
z4 <- ncomb.prob(x = as.list(x1),independent=FALSE)

\dontshow{
  str(z1);str(z2);str(z3);str(z4)
}
}
\keyword{\code{ncomb.prob}}



