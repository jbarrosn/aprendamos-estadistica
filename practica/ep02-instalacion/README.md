# Práctica · Episodio 2 · Instalar R y RStudio

Este episodio no tiene código propio: el ejercicio es **comprobar** que la herramienta quedó lista. Corre cada línea en la consola y compara con lo esperado.

| # | Escribe en la consola | Deberías ver |
|---|---|---|
| 1 | `R.version.string` | `"R version 4.x.x ..."` |
| 2 | `2 + 2` | `[1] 4` |
| 3 | `10 / 4` | `[1] 2.5` |
| 4 | `2 + 3 * 4` | `[1] 14` |
| 5 | `(2 + 3) * 4` | `[1] 20` |

## Lo que tienes que notar

- La consola empieza cada línea con `>`: eso es R esperando una orden.
- El `[1]` no es parte del número: es la posición del primer elemento del resultado. Con un solo número parece decoración; con varios vas a entender por qué está.
- Multiplicar se hace antes que sumar. Los paréntesis mandan (ejercicio 4 contra 5).

## Si algo falla

| Síntoma | Qué revisar |
|---|---|
| La consola no responde / «R not found» | Instalaste RStudio sin R: instala R y reabre |
| `Error: unexpected input` al pegar | Se pegó texto de más o una comilla rara; borra la línea y escríbela |
| Sale `+` en vez de `>` | Falta cerrar un paréntesis o una comilla: pulsa `Esc` y repite |

## Cuando termines

Marca el episodio como listo y pasa a [`../ep03-primer-codigo`](../ep03-primer-codigo), que ya se corrige solo.
