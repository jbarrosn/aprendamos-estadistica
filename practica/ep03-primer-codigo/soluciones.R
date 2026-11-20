# Práctica · Episodio 3 · Soluciones
#
# Ábrelo solo después de intentar `ejercicios.R`.
# Compara cómo lo escribiste, no solo el número final.


# Ejercicio 1
# c() junta valores en un vector; <- guarda el resultado en un nombre.
panes <- c(38, 41, 45, 47)


# Ejercicio 2
# sum() recibe el vector completo, no los valores uno por uno.
total <- sum(panes)


# Ejercicio 3
# mean() es la media aritmética: suma dividida para el número de datos.
promedio <- mean(panes)


# Ejercicio 4
# round() no modifica `promedio`: devuelve un valor nuevo. Por eso hay que guardarlo.
redondeado <- round(promedio, 1)


# Ejercicio 5
# Los acentos graves dejan usar un operador como si fuera una función.
# `+`(2, 3) es exactamente lo mismo que 2 + 3.
suma_funcion <- `+`(2, 3)


# Ejercicio 6
# El error no era la fórmula: era el nombre. R distingue mayúsculas.
# mean(Panes)  ->  Error: object 'Panes' not found
promedio_bien <- mean(panes)


# Reto opcional
# sapply() aplica la función sqrt() a cada elemento del vector.
raices <- sapply(panes, sqrt)


# --- comprobación final --------------------------------------------------
stopifnot(
  identical(panes, c(38, 41, 45, 47)),
  total == 171,
  all.equal(promedio, 42.75) == TRUE,
  all.equal(redondeado, 42.8) == TRUE,
  suma_funcion == 5,
  all.equal(promedio_bien, 42.75) == TRUE,
  all.equal(raices, sqrt(c(38, 41, 45, 47))) == TRUE
)
cat("✓ Todas las soluciones coinciden con lo esperado.\n")
