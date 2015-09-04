\name{Combine-package}
\alias{Combine-package}
\alias{Combine}
\docType{package}
\title{Game-Theoretic Probability Combination.}
\description{Suite of R functions for combining probability distributions according to a game-theoretic probability combination.
}
\details{
\tabular{ll}{
Package: \tab Combine\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-08-30\cr
License: \tab GPL-3\cr
Depends: \tab R (>= 2.14.0), methods \cr
URL: \tab http://www.cran.r-project.org, http://www.bioconductor.org, http://www.statomics.com \cr
}

}
\author{
Code: David R. Bickel and Marta Padilla (modifications)\cr
Documentation: Alaa Ali and Marta Padilla\cr
Maintainer: D. R. Bickel <dbickel@uOttawa.ca>
}
\references{
Bickel, D. R. (2012). Game-theoretic probability combination with applications to resolving conflicts between statistical methods. International Journal of Approximate Reasoning, 53, 880-891.
}

\keyword{ package }
\keyword{ Combine }
\keyword{ Combination }
\keyword{ Combination of probability distributions}
\keyword{ Game-theoretic}
\keyword{ mutual information}

\examples{
    #Two probability distributions to combine
x1<-c(A = .5, AA = .9, AAA = .6)
x2<-c(A = .3, AA = NA, AAA = .5)

z1 <- ncomb.prob(x = x1,y= x2,independent=TRUE)
z2 <- ncomb.prob(x = list(X1=x1,X2=x2),independent=FALSE)


\dontshow{str(z1);str(z2)}
}


