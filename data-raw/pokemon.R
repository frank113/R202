# Load in the data

pokemon_go <- readr::read_csv("data-raw/pokemon_go_scatterplot.csv")
pokemon <- readr::read_csv("data-raw/pokemon_handheld.csv")

# Save it

devtools::use_data(pokemon_go, internal = TRUE, overwrite = TRUE)
devtools::use_data(pokemon, internal = TRUE, overwrite = TRUE)