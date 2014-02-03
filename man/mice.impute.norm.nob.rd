\name{mice.impute.norm.nob}
\alias{mice.impute.norm.nob}
\alias{norm.nob}
\title{Imputation by linear regression (non Bayesian)}
\usage{
mice.impute.norm.nob(y, ry, x, ...)
}
\arguments{
  \item{y}{Incomplete data vector of length \code{n}}

  \item{ry}{Vector of missing data pattern
  (\code{FALSE}=missing, \code{TRUE}=observed)}

  \item{x}{Matrix (\code{n} x \code{p}) of complete
  covariates.}

  \item{...}{Other named arguments.}
}
\value{
A vector of length \code{nmis} with imputations.
}
\description{
Imputes univariate missing data using linear regression
analysis (non Bayesian version)
}
\details{
This creates imputation using the spread around the fitted
linear regression line of \code{y} given \code{x}, as
fitted on the observed data.
}
\note{
This function is provided mainly to allow comparison
between proper and improper norm methods. Also, it may be
useful to impute large data containing many rows.
}
\section{Warning}{
  The function does not incorporate the variability of the
  regression weights, so it is not 'proper' in the sense of
  Rubin. For small samples, variability of the imputed data
  is therefore underestimated.
}
\author{
Stef van Buuren, Karin Groothuis-Oudshoorn, 2000
}
\references{
Van Buuren, S., Groothuis-Oudshoorn, K. (2011).
\code{mice}: Multivariate Imputation by Chained Equations
in \code{R}. \emph{Journal of Statistical Software},
\bold{45}(3), 1-67. \url{http://www.jstatsoft.org/v45/i03/}

Brand, J.P.L. (1999). Development, Implementation and
Evaluation of Multiple Imputation Strategies for the
Statistical Analysis of Incomplete Data Sets. Ph.D. Thesis,
TNO Prevention and Health/Erasmus University Rotterdam.
}
\seealso{
\code{\link{mice}}, \code{\link{mice.impute.norm}}
}
\keyword{datagen}

