# Práctica

Aquí no se copia: aquí se escribe. Cada carpeta tiene los ejercicios del episodio y, al final del archivo, **las comprobaciones que te dicen si quedó bien**.

## Cómo se usa

1. Abre el `ejercicios.R` del episodio.
2. Lee el enunciado y escribe tu respuesta donde dice `# TU RESPUESTA:`.
3. Corre el archivo completo (Ctrl + Shift + Enter) o línea por línea.
4. Mira la consola: cada ejercicio imprime `✓` o `✗`.

```
✓ Ejercicio 1: creaste `panes` con los cuatro valores
✗ Ejercicio 2: `total` debe ser la suma de `panes`
```

Si ves `✗`, el mensaje te dice qué se esperaba. No sigas al siguiente hasta tener todos los `✓`.

Al final del archivo aparece tu resultado: `RESULTADO: n de 6`, con un mensaje según lo que hayas sacado.

> **¿Sin R instalado?** Los ejercicios funcionan igual en **Google Colab** (Runtime → Change runtime type → R) o en **Posit Cloud**. Manual: [docs/colab.md](../docs/colab.md).

## La regla

**No abras `soluciones.R` hasta tener un `✗` que no entiendas.** El objetivo no es que el archivo corra: es que puedas escribir la línea sin mirar.

## El reto se publica

Cuando termines, sube tu resultado a TikTok con **`#aprendamosestadistica`**. Lo que se traba en la práctica es exactamente lo que hay que explicar en el siguiente episodio: el curso se corrige con lo que ustedes publican.

## Índice

| Episodio | Carpeta | Qué practicas |
|---|---|---|
| 2 · Instalar R y RStudio | [`ep02-instalacion`](ep02-instalacion) | consola, aritmética, comprobar la versión |
| 3 · Tu primer código | [`ep03-primer-codigo`](ep03-primer-codigo) | objetos, funciones, errores de nombre |

## Cómo se ve un ejercicio

```r
# Ejercicio 1 — Crea el objeto `panes` con los valores 38, 41, 45 y 47.
# TU RESPUESTA:


# --- comprobación (no la toques) ---
check(exists("panes") && identical(panes, c(38, 41, 45, 47)),
      "Ejercicio 1: creaste `panes` con los cuatro valores")
```

El bloque gris de comprobación es parte del ejercicio: no lo borres, es tu corrector.
