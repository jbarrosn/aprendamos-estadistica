# Práctica · Episodio 3 · Tu primer código en R
#
# Escribe tu respuesta debajo de cada "# TU RESPUESTA:" y corre todo el archivo.
# Cada comprobación imprime ✓ si quedó bien y ✗ si falta algo.
#
# Atajo: Ctrl + Shift + Enter corre el archivo completo en RStudio.


# --- corrector: no lo toques ------------------------------------------
check <- function(cond, msg) {
  if (isTRUE(cond)) cat("✓", msg, "\n") else cat("✗", msg, "\n")
}
# ----------------------------------------------------------------------


# Ejercicio 1 — Crea el objeto `panes` con los valores 38, 41, 45 y 47.
# Pista: se usa c() y el operador <-
# TU RESPUESTA:


check(exists("panes") && identical(panes, c(38, 41, 45, 47)),
      "Ejercicio 1: creaste `panes` con los cuatro valores")


# Ejercicio 2 — Guarda en `total` la suma de `panes`.
# Pista: sum() suma; el total debe dar 171
# TU RESPUESTA:


check(exists("total") && is.numeric(total) && length(total) == 1 && total == 171,
      "Ejercicio 2: `total` es la suma de `panes` (171)")


# Ejercicio 3 — Guarda en `promedio` la media de `panes`.
# Pista: mean(); el resultado debe dar 42.75
# TU RESPUESTA:


check(exists("promedio") && isTRUE(all.equal(promedio, 42.75)),
      "Ejercicio 3: `promedio` es 42.75")


# Ejercicio 4 — Redondea `promedio` a un decimal y guárdalo en `redondeado`.
# Pista: round(x, digitos); debe dar 42.8
# TU RESPUESTA:


check(exists("redondeado") && isTRUE(all.equal(redondeado, 42.8)),
      "Ejercicio 4: `redondeado` es 42.8")


# Ejercicio 5 — Demuestra que sumar es una función:
# guarda en `suma_funcion` el resultado de usar `+` como función con 2 y 3.
# Pista: se escribe con acentos graves:  `+`(2, 3)
# TU RESPUESTA:


check(exists("suma_funcion") && isTRUE(all.equal(suma_funcion, 5)),
      "Ejercicio 5: `suma_funcion` vale 5")


# Ejercicio 6 — El error de siempre.
# La línea de abajo está mal escrita a propósito: R distingue mayúsculas.
#   mean(Panes)
# Corrige el nombre y guarda el resultado en `promedio_bien`.
# TU RESPUESTA:


check(exists("promedio_bien") && isTRUE(all.equal(promedio_bien, 42.75)),
      "Ejercicio 6: `promedio_bien` vale 42.75 (con ese, no con mayúscula)")


# Reto opcional — Aplica la raíz cuadrada a cada valor de `panes`.
# Pista: sapply(panes, sqrt) aplica sqrt a cada elemento.
# TU RESPUESTA:


check(exists("raices") && isTRUE(all.equal(raices, sqrt(c(38, 41, 45, 47)))),
      "Reto: `raices` tiene la raíz cuadrada de cada valor")


cat("\nListo. Si quedan ✗, revisa el mensaje: dice qué se esperaba.\n")
