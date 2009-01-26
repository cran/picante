\name{phylosor}
\alias{phylosor}

\title{Compute phylogenetic index of beta-diversity Phylosor}
\description{Compute phylogenetic index of similarity Phylosor}
\usage{
phylosor(samp, tree)    
}

\arguments{
  \item{samp}{ Community data matrix }
  \item{tree}{ Phylo object}
}
\value{
  dataframe with four columns: plot number 1; plot number 2; sorensen index; phylosor index
}
\references{Bryant, J.B., Lamanna, C., Morlon, H., Kerkhoff, A.J., Enquist, B.J., Green, J.L. 2008. Microbes on mountainsides: Contrasting elevational patterns of bacterial and plant diversity. Proceedings of the National Academy of Sciences 105 Supplement 1: 1505-1511
}
\author{ Helene Morlon <morlon.helene@gmail.com> }
\examples{
data(phylocom)
phylosor(phylocom$sample, phylocom$phylo)}
\keyword{univar}
