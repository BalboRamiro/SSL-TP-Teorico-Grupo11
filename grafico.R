# Instalar y cargar la biblioteca ggplot2 si no la tienes instalada
install.packages("ggplot2")
library(ggplot2)

# Crear un marco de datos con tus resultados directamente en el código
datos <- data.frame(
  Tamaño = factor(c(rep("10,000", 20), rep("100,000", 20), rep("1,000,000", 20)),
                  levels = c("10,000", "100,000", "1,000,000")),
  Tiempo = c(
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  # 10,000 C#
    3, 3, 3, 2, 3, 3, 4, 3, 3, 2,  # 10,000 Java
    11, 12, 14, 15, 11, 11, 13, 11, 12, 14,  # 100,000 C#
    11, 35, 13, 14, 11, 35, 12, 12, 14, 11,  # 100,000 Java
    80, 81, 88, 82, 83, 90, 88, 87, 85, 86,  # 1,000,000 Java
    103, 111, 143, 156, 114, 141, 142, 120, 183, 109  # 1,000,000 C#
  ),
  Lenguaje = factor(c(
    rep("C#", 10), rep("Java", 10),  # 10,000
    rep("C#", 10), rep("Java", 10),  # 100,000
    rep("Java", 10), rep("C#", 10)   # 1,000,000
  ))
)

# Crear el gráfico y asegurarse de que el eje X esté en el orden correcto
ggplot(datos, aes(x = Tamaño, y = Tiempo, color = Lenguaje, group = Lenguaje)) +
  geom_point() +
  geom_line() +
  labs(title = "Comparación de Tiempos de Ordenamiento",
       x = "Tamaño del Array",
       y = "Tiempo (ms)",
       color = "Lenguaje") +
  scale_color_manual(values = c("Java" = "blue", "C#" = "red")) +
  scale_x_discrete(limits = c("10,000", "100,000", "1,000,000")) +  # Asegurar el orden del eje X
  theme_minimal()



