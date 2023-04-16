# ---- load libraries
library(hexSticker)
library(tidyverse)
library(showtext)


# ---- set font
font_add_google("Oswald")
showtext_auto()



# adding forecast plot
df <- tribble(
  ~x,   ~y,     ~z,
  1,   .5,    1,
  2,    1,   1.4,
  3,  .75,      1.1,
  4,  1.25,   1.75,
  5,  1,   1.5
)


p <- df %>% 
  filter(x <= 5) %>%
  ggplot(aes(x = x)) + 
  geom_col(aes(y = y), size = .5, color = "#efefef", fill = "#2066a2", linetype = 1) +
  geom_line(aes(y = z), size = 1, color = "#0C234B") +
  geom_point(aes(y = z), size = 2, color = "#0C234B") +
  expand_limits(y = 2) + 
  theme_void() + 
  theme_transparent()




# create hex sticker
sticker(
  p,
  package = "", 
  p_color = "#0a3370",
  p_size = 27.5, 
  p_family = "Oswald",
  p_y = 1.25,
  s_x = 1, 
  s_y = .7, 
  s_width = 1, 
  s_height = .7,
  h_fill = "#ffffff",
  h_color = "#9EABAE",
  filename = here::here("images","analytics-hex-logo.png"),
  url = "University of Arizon Global Campus",
  u_size = 9.8,
  u_y = .07,
  u_x  = .98,
  u_color = "#0C234B",
  u_family = "Oswald",
  dpi = 500
)
