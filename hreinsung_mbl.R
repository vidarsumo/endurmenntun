
# Laga til MBL gagnasettið

library(tidyverse)

df <- read_csv("./data/mbl_gagnasett.csv")

velja <- c("Fjölbýli", "Einbýli", "atv")

df_hreint <- df %>% 
  filter(Tegund %in% velja,
         Stadur != "Útlöndum")


df_hreint <- df_hreint %>% 
  select(-Dags.sott) %>% 
  na.omit()

df_hreint$Tegund <- recode(df_hreint$Tegund,
                           "atv" = "Atvinnuhúsnæði")

write_csv(df_hreint, "./data/mbl_hreint.csv")


# Fyrir join

mbl_verd <- df %>% 
  filter(Stadur %in% c("Reykjavik", "Mosfellsbæ", "Hafnarfirði", "Kópavogi", "Garðabæ")) %>% 
  group_by(Stadur) %>%
  summarise(medalverd = mean(Verd, na.rm = TRUE))

mbl_fm <- df %>% 
  filter(Stadur %in% c("Reykjavik", "Mosfellsbæ", "Hafnarfirði", "Kópavogi", "Garðabæ")) %>% 
  group_by(Stadur) %>%
  summarise(medalstaerd = mean(Size, na.rm = TRUE))