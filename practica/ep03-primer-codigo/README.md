# Práctica · Episodio 3 · Tu primer código en R

**Tiempo:** 15 minutos. **Necesitas:** RStudio abierto (episodio 2 hecho).

## Cómo se hace

1. Abre [`ejercicios.R`](ejercicios.R).
2. Escribe tu respuesta debajo de cada `# TU RESPUESTA:`.
3. Corre el archivo completo: **Ctrl + Shift + Enter**.
4. Lee la consola: cada ejercicio imprime `✓` o `✗`.

No hay que entregar nada. El `✗` ya te dice qué falta.

## Los seis ejercicios

| # | Qué practicas | Se considera bien si… |
|---|---|---|
| 1 | crear un objeto con `c()` | `panes` tiene los cuatro valores |
| 2 | llamar una función | `total` es la suma: 171 |
| 3 | guardar un resultado de función | `promedio` es 42.75 |
| 4 | pasar un resultado a otra función | `redondeado` es 42.8 |
| 5 | que `+` también es función | `suma_funcion` es 5 |
| 6 | corregir un nombre mal escrito | `promedio_bien` existe y vale 42.75 |

El 6 es el importante: es el error que vas a cometer cien veces.

## Si algo falla

| Mensaje | Qué significa |
|---|---|
| `✗ Ejercicio 1: ...` | El objeto no existe todavía o tiene otros valores. Revisa que usaste `<-` y `c()`. |
| `Error: object 'panes' not found` | Corriste el ejercicio 2 sin haber hecho el 1. |
| `Error: unexpected symbol` | Falta una coma entre los valores o cerrar un paréntesis. |
| `✗` en el 6 | Seguramente escribiste `Panes` o `Pane` con mayúscula: R distingue mayúsculas. |

## Después

Abre [`soluciones.R`](soluciones.R) solo cuando tengas todos los `✓`, para comparar **cómo** lo escribiste, no solo el resultado. Si tu solución es distinta y también da `✓`, está bien: en R casi siempre hay más de un camino.
