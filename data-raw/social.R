# Load in the data

social <- readr::read_csv("http://stat.cmu.edu/202/data/socialmedia_project2.csv")

##### Code in 7-15 taken from Frisoli et al. in preparing it for loading #####

video_levels <- c("0", "1", "2+")
channel_types <- names(summary(factor(social$channel)))

social <- social %>% 
  dplyr::mutate(videos = factor(videos,
                         levels = 0:2,
                         labels = video_levels),
         channel = factor(channel,
                          labels = channel_types))


# Save it
readr::write_csv(social, "data-raw/social.csv")
devtools::use_data(social, overwrite = TRUE)
