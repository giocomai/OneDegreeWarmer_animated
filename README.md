# Create an animated time series with data from EdjNet's 'One Degree Warmer' investigation

This repository includes all the code and data needed to create the animated time series presented [in this blog post](https://codebase.giorgiocomai.eu/2018/10/17/one-degree-warmer-animating-time-series-with-ggplot-and-gganimate/).

Find out more about the investigation on its website [https://www.onedegreewarmer.eu/](https://www.onedegreewarmer.eu/).

## How does this work?

This repository includes the R code needed to generate static and animated time series for all the cities included in the dataset. If you run the `bulk_create_graphs.R` file, graphs in png, gif, and mp4 format for all cities will be automatically created in sub-folders. 

If you have R installed on your system, all you need to do is:

```
git clone git@github.com:giocomai/OneDegreeWarmer_animated.git
cd OneDegreeWarmer_animated
Rscript bulk_create_graphs.R

```

## Are these data free to use?

Yes, according to the notice included on the investigation's website:
"You are free to reuse data, and other resources linked on this site, provided you credit the source, the European Data Journalism Network."
