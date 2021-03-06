\docType{data}
\name{book.tee.data}
\alias{book.tee.data}
\title{Golf tee data used in chapter 6 of Advanced Distance Sampling examples}
\format{The format is: List of 4 $ book.tee.dataframe:'data.frame': 324 obs.
  of 7 variables: ..$ object : num [1:324] 1 1 2 2 3 3 4 4 5 5 ...  ..$
  observer: Factor w/ 2 levels "1","2": 1 2 1 2 1 2 1 2 1 2 ...  ..$
  detected: num [1:324] 1 0 1 0 1 0 1 0 1 0 ...  ..$ distance: num [1:324]
  2.68 2.68 3.33 3.33 0.34 0.34 2.53 2.53 1.46 1.46 ...  ..$ size : num
  [1:324] 2 2 2 2 1 1 2 2 2 2 ...  ..$ sex : num [1:324] 1 1 1 1 0 0 1 1 1 1
  ...  ..$ exposure: num [1:324] 1 1 0 0 0 0 1 1 0 0 ...  $ book.tee.region
  :'data.frame': 2 obs. of 2 variables: ..$ Region.Label: Factor w/ 2 levels
  "1","2": 1 2 ..$ Area : num [1:2] 1040 640 $ book.tee.samples
  :'data.frame': 11 obs. of 3 variables: ..$ Sample.Label: num [1:11] 1 2 3
  4 5 6 7 8 9 10 ...  ..$ Region.Label: Factor w/ 2 levels "1","2": 1 1 1 1
  1 1 2 2 2 2 ...  ..$ Effort : num [1:11] 10 30 30 27 21 12 23 23 15 12 ...
  $ book.tee.obs :'data.frame': 162 obs. of 3 variables: ..$ object : int
  [1:162] 1 2 3 21 22 23 24 59 60 61 ...  ..$ Region.Label: int [1:162] 1 1
  1 1 1 1 1 1 1 1 ...  ..$ Sample.Label: int [1:162] 1 1 1 1 1 1 1 1 1 1 ...}
\description{
Double platform data collected in a line transect survey of
golf tees by 2 observers at St. Andrews. Field sex was
actually colour of the golf tee: 0 - green; 1 - yellow.
Exposure was either low (0) or high(1) depending on height
of tee above the ground. size was the number of tees in an
observed cluster.
}
\keyword{datasets}

