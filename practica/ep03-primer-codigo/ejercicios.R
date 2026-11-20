# Práctica · Episodio 3 · Tu primer código en R
#
# Escribe tu respuesta debajo de cada "# TU RESPUESTA:" y corre todo el archivo.
# Al final verás tu resultado: cuántos ejercicios quedaron bien y cuáles no.
#
# En RStudio:      Ctrl + Shift + Enter  (corre el archivo completo)
# En Colab / web:  pega el archivo en una celda y pulsa Shift + Enter
#
# No busques números de línea: busca el comentario "# Ejercicio N".


# --- corrector: no lo toques ------------------------------------------
resultado <- list(ok = 0L, fallos = character(0))

check <- function(cond, msg) {
  if (isTRUE(cond)) {
    resultado$ok <<- resultado$ok + 1L
    cat("✓", msg, "\n")
  } else {
    resultado$fallos <<- c(resultado$fallos, msg)
    cat("✗", msg, "\n")
  }
}

resumen <- function(total) {
  bien <- resultado$ok
  cat("\n", strrep("-", 48), "\n", sep = "")
  cat(sprintf("RESULTADO: %d de %d\n", bien, total))
  if (bien == total) {
    cat("¡Felicidades! Los ", total, " ejercicios quedaron bien.\n", sep = "")
    cat("Ahora repítelo cambiando los valores de panes: eso es practicar de verdad.\n")
  } else if (bien >= ceiling(total * 0.6)) {
    cat("Vas bien. Revisa los ✗ de arriba, corrige y vuelve a correr el archivo.\n")
  } else {
    cat("Todavía no. Vuelve al bloque 1 del episodio 3 (el script) y repite el ejemplo.\n")
  }
  cat("Puedes aumentar la dificultad en ", "practica/README.md", ".\n", sep = "")
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


# Ejercicio 5 — Sumar también es una función.
# Guarda en `suma_funcion` el resultado de llamar a `+` COMO FUNCIÓN.
# Pista: se escribe con acentos graves:  `+`(2, 3)
#
# Ojo: `2 + 3` da el mismo número, pero no demuestra la idea del episodio.
# El ejercicio es usar la forma de función; el corrector no puede distinguirlo,
# así que la decisión es tuya.
# TU RESPUESTA:


check(exists("suma_funcion") && isTRUE(all.equal(suma_funcion, 5)),
      "Ejercicio 5: `suma_funcion` vale 5 (¿la escribiste como función?)")


# Ejercicio 6 — El error de siempre.
# La línea de abajo está mal escrita a propósito: R distingue mayúsculas.
#   mean(Panes)
# Corrige el nombre y guarda el resultado en `promedio_bien`.
# TU RESPUESTA:


check(exists("promedio_bien") && isTRUE(all.equal(promedio_bien, 42.75)),
      "Ejercicio 6: `promedio_bien` vale 42.75 (con ese, no con mayúscula)")


resumen(6)


# Reto opcional — Aplica la raíz cuadrada a cada valor de `panes`.
# Pista: sapply(panes, sqrt) aplica sqrt a cada elemento.
# TU RESPUESTA:


if (exists("raices") && isTRUE(all.equal(raices, sqrt(c(38, 41, 45, 47))))) {
  cat("\nReto ✓: aplicaste sqrt a cada valor. Eso es pensar en vectores.\n")
} else if (exists("raices")) {
  cat("\nReto ✗: revisa que `raices` sea sapply(panes, sqrt).\n")
} else {
  cat("\nReto opcional pendiente (no afecta a los seis ejercicios).\n")
}

cat("\nCuando termines, publica tu reto en TikTok con #aprendamosestadistica.\n")
cat("Así sabemos qué explicar mejor en el próximo episodio.\n")
