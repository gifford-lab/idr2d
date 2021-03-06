% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auxiliary.R
\name{calculate_midpoint_distance2d}
\alias{calculate_midpoint_distance2d}
\title{Distance between Anchor Midpoints of two Interactions}
\usage{
calculate_midpoint_distance2d(
  int1_anchor_a_start,
  int1_anchor_a_end,
  int1_anchor_b_start,
  int1_anchor_b_end,
  int2_anchor_a_start,
  int2_anchor_a_end,
  int2_anchor_b_start,
  int2_anchor_b_end
)
}
\arguments{
\item{int1_anchor_a_start}{integer vector; genomic start coordinate(s)
of anchor A in replicate 1 interaction}

\item{int1_anchor_a_end}{integer vector; genomic end coordinate(s)
of anchor A in replicate 1 interaction}

\item{int1_anchor_b_start}{integer vector; genomic start coordinate(s)
of anchor B in replicate 1 interaction}

\item{int1_anchor_b_end}{integer vector; genomic end coordinate(s)
of anchor B in replicate 1 interaction}

\item{int2_anchor_a_start}{integer vector; genomic start coordinate(s)
of anchor A in replicate 2 interaction}

\item{int2_anchor_a_end}{integer vector; genomic end coordinate(s)
of anchor A in replicate 2 interaction}

\item{int2_anchor_b_start}{integer vector; genomic start coordinate(s)
of anchor B in replicate 2 interaction}

\item{int2_anchor_b_end}{integer vector; genomic end coordinate(s)
of anchor B in replicate 2 interaction}
}
\value{
positive integer vector; distances between interaction pairs
}
\description{
Calculates the distance in nucleotides between the anchor midpoints of
two interactions, which is the sum of the distance between midpoints of
anchor A in interaction 1 and anchor A in interaction 2, and the distance
between midpoints of
anchor B in interaction 1 and anchor B in interaction 2.

Note: all anchors must be on the same
chromosome; start coordinate is always less than end coordinate
}
\examples{
# identical, zero distance
calculate_midpoint_distance2d(100, 120, 240, 260,
                              100, 120, 240, 260)

# centered, zero distance
calculate_midpoint_distance2d(100, 120, 240, 260,
                              90, 130, 230, 270)

# off by 10 per anchor
calculate_midpoint_distance2d(100, 120, 240, 250,
                              110, 130, 230, 240)

# off by 10 (anchor B only)
calculate_midpoint_distance2d(100, 120, 240, 250,
                              90, 130, 250, 260)

# vectorized example
calculate_midpoint_distance2d(c(100, 100, 100, 100),
                              c(120, 120, 120, 120),
                              c(240, 240, 240, 240),
                              c(260, 260, 250, 250),
                              c(100, 90, 110, 90),
                              c(120, 130, 130, 130),
                              c(240, 230, 230, 250),
                              c(260, 270, 240, 260))

}
