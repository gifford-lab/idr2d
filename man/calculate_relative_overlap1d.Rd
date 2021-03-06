% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary.R
\name{calculate_relative_overlap1d}
\alias{calculate_relative_overlap1d}
\title{Relative Anchor Overlap of two Peaks}
\usage{
calculate_relative_overlap1d(peak1_start, peak1_end, peak2_start, peak2_end)
}
\arguments{
\item{peak1_start}{integer vector; genomic start coordinate(s)
of peak in replicate 1}

\item{peak1_end}{integer vector; genomic end coordinate(s)
of peak in replicate 1}

\item{peak2_start}{integer vector; genomic start coordinate(s)
of peak in replicate 2}

\item{peak2_end}{integer vector; genomic end coordinate(s)
of peak in replicate 2}
}
\value{
numeric vector; relative overlaps between peak pairs
}
\description{
Calculates the overlap between anchor A of interaction 1 and anchor
A of interaction 2, as well as anchor B of interaction 1 and anchor B of
interaction 2. The overlap (in nucleotides) is then normalized by the length
of the anchors.
}
\examples{
# 100\% overlap
calculate_relative_overlap1d(100, 120,
                         100, 120)

# 50\% overlap
calculate_relative_overlap1d(100, 120,
                         100, 110)

# negative overlap
calculate_relative_overlap1d(100, 120,
                         130, 140)

# larger negative overlap
calculate_relative_overlap1d(100, 120,
                         200, 220)

# vectorized example
calculate_relative_overlap1d(c(100, 100, 100, 100),
                         c(120, 120, 120, 120),
                         c(100, 100, 130, 200),
                         c(120, 110, 140, 220))
}
