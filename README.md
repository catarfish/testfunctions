
<!-- README.md is generated from README.Rmd. Please edit that file -->

# wqplot

<!-- badges: start -->
<!-- badges: end -->

The goal of wqplot is to allow you to visualize wq data with different
kinds of plots.

## Installation

You can install the development version of testfunctions from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("catarfish/testfunctions")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(testfunctions)
```

Look at data

``` r
summary(YBFMP_WQ)
#>  PhysicalDataID   StationCode             Date           
#>  Min.   :   2.0   Length:1886        Min.   :1998-02-03  
#>  1st Qu.: 537.2   Class :character   1st Qu.:2010-02-25  
#>  Median :1045.5   Mode  :character   Median :2014-12-03  
#>  Mean   :1030.7                      Mean   :2013-03-02  
#>  3rd Qu.:1529.8                      3rd Qu.:2017-08-30  
#>  Max.   :2010.0                      Max.   :2020-01-28  
#>                                      NA's   :8           
#>     Datetime                        Year            WY           Month       
#>  Min.   :1998-02-03 07:59:00   Min.   :1998   Min.   :1998   Min.   : 1.000  
#>  1st Qu.:2010-02-26 04:19:45   1st Qu.:2010   1st Qu.:2010   1st Qu.: 3.000  
#>  Median :2014-12-03 21:08:00   Median :2014   Median :2015   Median : 7.000  
#>  Mean   :2013-03-02 20:32:42   Mean   :2013   Mean   :2013   Mean   : 6.281  
#>  3rd Qu.:2017-08-30 14:13:00   3rd Qu.:2017   3rd Qu.:2017   3rd Qu.: 9.000  
#>  Max.   :2020-01-28 09:30:00   Max.   :2020   Max.   :2020   Max.   :12.000  
#>  NA's   :8                     NA's   :8      NA's   :8      NA's   :8       
#>     MonthAbb        doWY                Tide       Microcystis   
#>  Aug    :266   Min.   :  1.0   Ebb        : 152   Min.   :0.000  
#>  Oct    :226   1st Qu.:116.0   Flood      :  70   1st Qu.:1.000  
#>  Sep    :213   Median :197.0   Overtopping:  20   Median :1.000  
#>  Mar    :179   Mean   :197.3   High       :   6   Mean   :1.111  
#>  Feb    :159   3rd Qu.:306.0   FLD        :   2   3rd Qu.:1.000  
#>  (Other):835   Max.   :365.0   (Other)    :   3   Max.   :3.000  
#>  NA's   :  8   NA's   :8       NA's       :1633   NA's   :1254   
#>      Secchi        WaterTemp       Conductivity     SpecificConductance
#>  Min.   :0.000   Min.   : 0.169   Min.   :   7.32   Min.   :   8.48    
#>  1st Qu.:0.210   1st Qu.:13.100   1st Qu.: 137.00   1st Qu.: 151.00    
#>  Median :0.300   Median :18.670   Median : 242.00   Median : 246.00    
#>  Mean   :0.549   Mean   :17.593   Mean   : 372.56   Mean   : 386.67    
#>  3rd Qu.:0.740   3rd Qu.:21.900   3rd Qu.: 563.00   3rd Qu.: 601.00    
#>  Max.   :5.330   Max.   :62.000   Max.   :2184.00   Max.   :1887.00    
#>  NA's   :193     NA's   :52       NA's   :217       NA's   :961        
#>        DO               pH           Turbidity      FieldComments_WQ  
#>  Min.   : 0.000   Min.   : 5.910   Min.   :  0.60   Length:1886       
#>  1st Qu.: 6.970   1st Qu.: 7.560   1st Qu.:  8.70   Class :character  
#>  Median : 8.200   Median : 7.790   Median : 25.50   Mode  :character  
#>  Mean   : 8.036   Mean   : 7.835   Mean   : 34.80                     
#>  3rd Qu.: 9.250   3rd Qu.: 8.020   3rd Qu.: 47.77                     
#>  Max.   :14.210   Max.   :87.920   Max.   :404.00                     
#>  NA's   :433      NA's   :435      NA's   :568
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

Run plotting code: `Yearbox(YBFMP_WQ, Conductivity)` should produce a
plot
