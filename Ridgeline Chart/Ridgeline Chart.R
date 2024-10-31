library(ggplot2)
library(ggridges)
library(dplyr)

# Llegeix el fitxer CSV
data <- read.csv("/Users/annanofuentescreus/Documents/Màster en Ciència de Dades UOC/2n Semestre/Visualització de dades/PAC2_Estudi de tècniques de visualització de dades/PAC2/Ridgeline Chart/bmi.csv")

data_filtered <- data %>%
  filter(Age >= 50 & Age <= 60)

ggplot(data_filtered, aes(x = Bmi, y = factor(Age), fill = factor(Age))) +
  geom_density_ridges(scale = 0.9) +
  theme_ridges() +
  labs(title = "Distribució del IMC per Edat (50-60 anys)",
       x = "Índex de Massa Corporal (IMC)",
       y = "Edat")

