if (!require(pacman)) install.packages("pacman")
pacman::p_load("tidyverse")
pacman::p_load("rmarkdown")

cities <- read_csv(file = file.path("data", "temperaturesMerged.csv")) %>% 
  pull(City) %>% 
  unique()

dir.create("html", showWarnings = FALSE) 

# if already processed, don't do them again
citiesDone <- list.files(path = file.path("html"), include.dirs = FALSE) %>%
  stringr::str_remove(".html")
cities <- cities[is.element(cities, citiesDone)==FALSE]

for (i in cities) {
  rmarkdown::render(input = "OneDegreeWarmer_time_series.Rmd",
                    params = list(
                      city = i
                    ),
                    output_file = paste0(i,".html"),
                    output_dir = "html")
}

