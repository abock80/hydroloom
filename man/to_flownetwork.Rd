% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/to_flownetwork.R
\name{to_flownetwork}
\alias{to_flownetwork}
\title{to flownetwork}
\usage{
to_flownetwork(x, warn_dendritic = TRUE)
}
\arguments{
\item{x}{data.frame network compatible with \link{hydroloom_names}.}

\item{warn_dendritic}{logical if TRUE and a dendritic \code{toid} attribute is
provided, a warning will be emitted as toid is expected to be non-dendritic
for any \code{downmain} to be \code{FALSE}.}
}
\value{
data.frame "id", "toid", "upmain" and "downmain attributes. A check
is run to ensure upmain and downmain are valid with one and only one upmain
and one and only one downmain from any given network element.
}
\description{
converts an \code{hy} object into a flownetwork with "id", "toid",
"upmain" and "downmain attributes.
}
\details{
Required attributes:

\code{id} and \code{toid} or \code{fromnode} and \code{tonode}

\code{divergence}
an attribute containing 0, 1, or 2 where 0 indicates there is only one
downstream connection, 1 is the main connection downstream
of a diversion and 2 is secondary connection downstream of a diversion.

\code{levelpath},
integer attribute which will have one and only one matching value upstream
at a confluence.
}
\examples{
f <- sf::read_sf(system.file("extdata/new_hope.gpkg", package = "hydroloom"))
to_flownetwork(f)

}
