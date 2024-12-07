#librerias
library(dplyr)
library(ggplot2)

#Leemos ggplot2
#Leemos los datos
Datos1 = read.csv("C:/Users/greci/OneDrive/Documentos/Proyecto no github/fish emergente-table.csv", skip = 6)
#Nos quedamos con las col de interes 
Datos1 = Datos1 [, c(5,13,14)]


Datos2 = read.csv("C:/Users/greci/OneDrive/Documentos/Proyecto no github/fish emergente3-table.csv", skip = 6)
#Nos quedamos con las col de interes 
Datos2 = Datos2 [, c(5,13,14)]


#Promediamos
Resumen1 = Datos1 %>% group_by( X.step., Emergente)%>% summarise("Promedio_peces" = mean(count.peces)) 

#Graficamos 
ggplot(Resumen1, aes(x = X.step., y = Promedio_peces, color = Emergente)) +
  geom_line() +        # Línea que conecta los puntos
  geom_point() +       # Puntos sobre la línea
  labs(
    title = "50 peces, 1 tiburon",
    x = "Tiempo",
    y = "Promedio de peces",
    color = "Emergente"
  ) +
  theme_minimal()      # Tema limpio y moderno

Resumen2 = Datos2 %>% group_by( X.step., Emergente)%>% summarise("Promedio_peces" = mean(count.peces)) 

#Graficamos 
ggplot(Resumen2, aes(x = X.step., y = Promedio_peces, color = Emergente)) +
  geom_line() +        # Línea que conecta los puntos
  geom_point() +       # Puntos sobre la línea
  labs(
    title = "300 peces, 2 tiburones",
    x = "Tiempo",
    y = "Promedio de peces",
    color = "Emergente"
  ) +
  theme_minimal()      # Tema limpio y moderno


