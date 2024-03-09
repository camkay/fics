
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fics

Contains a function (`fics`) for creating conspiracy items using the
Flexible Inventory of Conspiracy Suspicions (FICS; Wood, 2017).

## Installation

The development version of `fics` can be installed from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("camkay/fics")
```

## Descriptions and Examples

### fics

`fics` creates items assessing the belief in a conspiracy about a given
topic. The items are created using the Flexible Inventory of Conspiracy
Suspicions (FICS) template (Wood, 2017).

``` r
fics("Canada")
#>  [1] "The real truth about Canada is being kept from the public."                                                                  
#>  [2] "There is something very suspicious about the things the public has been told about Canada."                                  
#>  [3] "People need to wake up and start asking questions about Canada."                                                             
#>  [4] "Those in power are going to a great deal of trouble to keep Canada from being thoroughly investigated."                      
#>  [5] "If most people knew the real truth about Canada, there would be riots in the streets."                                       
#>  [6] "It’s very suspicious that so few people in the media question whether we’re being told the truth about Canada."              
#>  [7] "When it comes to Canada, most people are asleep and need to wake up."                                                        
#>  [8] "Those in power are very nervous that the public will realize the truth about Canada."                                        
#>  [9] "We may never know the full truth about Canada, but it's clear that the mainstream story is a complete lie."                  
#> [10] "The facts about Canada simply don’t match what we’ve been told by 'experts' and the mainstream media."                       
#> [11] "We need a new, unbiased investigation to uncover the real truth about Canada."                                               
#> [12] "Anyone who's been paying attention knows that we're being lied to about Canada, but most people are simply brainwashed."     
#> [13] "Reporters, scientists, and government officials are involved in a conspiracy to cover up important information about Canada."
#> [14] "We may never know the full truth about Canada, but it's clear that the mainstream story is a complete lie."                  
#> [15] "If the truth about Canada came out, it would hurt the interests of some extremely powerful people."                          
#> [16] "The mainstream media could never have an honest discussion about Canada - there are too many powerful interests at work."    
#> [17] "An impartial, independent investigation of Canada would show once and for all that we've been lied to on a massive scale."
```

## References

Wood, M. J. (2017). Conspiracy suspicions as a proxy for beliefs in
conspiracy theories: Implications for theory and measurement. *British
Journal of Psychology, 108*(3), 507–527.
<https://doi.org/10.1111/bjop.12231>
