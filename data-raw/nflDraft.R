# Load the data

nflDraft <- readxl::read_excel("data-raw/NFLDraft.xlsx")

# save the data
## readr::write_csv(nflDraft, "data-raw/nfl_draft.csv")
usethis::use_data(nflDraft, overwrite = TRUE)