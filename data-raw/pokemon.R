# Load in the data

pokemon_go <- readr::read_csv("data-raw/pokemon_go_scatterplot.csv")
pokemon <- readr::read_csv("data-raw/pokemon_handheld.csv")

# Save it for vignettes

readr::write_csv(pokemon, "vignettes/egg_files/pokemon.csv")
readr::write_csv(pokemon_go, "vignettes/egg_files/pokemon_go.csv")

