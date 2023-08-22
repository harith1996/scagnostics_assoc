library(cassowaryr)
library(ggplot2)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

# pick examples
exampledata <- datasaurus_dozen %>%
  filter(dataset %in% c("slant_up", "circle", "dots", "away"))


#plot them
exampledata %>%
  ggplot(aes(x=x,y=y, colour=dataset))+
  geom_point() +
  facet_wrap("dataset") +
  theme_minimal() +
  theme(legend.position = "none", aspect.ratio=1)