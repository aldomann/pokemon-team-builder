library(tidyverse)

data <- data.table::fread("data/pokemon.csv") %>% as_tibble()

data %>%
  dplyr::select(name)

summarise_pokemon <- function(pokemon_name) {
  data %>%
    filter(name == pokemon_name) %>%
    select(pokedex_number, name, hp, attack, defense, abilities, )
}

summarise_pokemon("Charizard")
