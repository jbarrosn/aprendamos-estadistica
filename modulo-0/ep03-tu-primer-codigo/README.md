# Episodio 3 · Tu primer código en R

**Objetivo:** entender las cuatro ventanas de RStudio escribiendo cinco líneas.
**Antes de empezar:** R y RStudio instalados (episodio 2).
**Duración:** un minuto de video; quince de práctica.

## Qué vas a aprender

- Dónde se escribe el código que **se guarda** (script) y dónde se **ejecuta** (consola).
- Qué aparece en el **environment** y por qué se borra al cerrar.
- Que hasta `+` es una función y que un parámetro puede ser otra función.

## El código completo

Cópialo tal cual, o abre [`ep03_primer_codigo.R`](ep03_primer_codigo.R):

```r
# 1. El script: la receta que se guarda
panes <- c(38, 41, 45, 47)
panes

# 2. La consola: aquí todo se ejecuta
2 + 3 * 4
mean(panes)

# 3. El environment: lo que R tiene en memoria
ls()

# 4. Las herramientas: plots y ayuda
plot(panes)
?mean

# 5. Todo en R es una función
`+`(2, 3)
round(mean(panes), 1)

# 6. El error más común: el nombre mal escrito
mean(Pane)
```

## Las cuatro ventanas

| Ventana | Dónde está | Qué hace |
|---|---|---|
| **script** | arriba a la izquierda | Guarda la receta. Es lo único que sobrevive al cerrar. |
| **consola** | abajo a la izquierda | Ejecuta. Es el corazón: si no pasa por aquí, no pasó. |
| **environment** | arriba a la derecha | Muestra lo que R tiene en memoria ahora mismo. |
| **herramientas** | abajo a la derecha | Plots, Packages, Help: gráficos, paquetes, ayuda. |

## Qué deberías ver

```
> panes
[1] 38 41 45 47

> 2 + 3 * 4
[1] 14

> mean(panes)
[1] 42.75

> `+`(2, 3)
[1] 5

> round(mean(panes), 1)
[1] 42.8
```

Y en el environment, un objeto nuevo: `panes   num [1:4] 38 41 45 47`.

## Errores comunes

| Síntoma | Causa | Solución |
|---|---|---|
| `Error: object 'panes' not found` | Corriste `mean(panes)` sin crear `panes` | Corre primero la línea de `panes <- ...` |
| `Error: object 'Pane' not found` | Mayúscula de más | R distingue mayúsculas: es `panes`, no `Pane` |
| `Error: unexpected symbol` | Falta una coma o un paréntesis | Revisa `c(38, 41, 45, 47)` |
| El environment está vacío | Se borra al cerrar RStudio | Es normal: lo que perdura es el script |
| `plot(panes)` no muestra nada | El panel Plots está minimizado | *View → Panes → Show Plots* |

## El detalle que más tropiezos evita

`panes <- c(38, 41, 45, 47)` **no imprime nada**: guarda. Para verlo, escribe `panes` en la consola. Guardar y mostrar son dos acciones distintas.

## Reto

Calcula el promedio de `panes` redondeado a **dos** decimales y guárdalo en un objeto llamado `promedio`.

<details>
<summary>Solución</summary>

```r
promedio <- round(mean(panes), 2)
promedio
```
</details>

## Siguiente

Episodio 4 · Tu primer gráfico en R. *«¿Y si le pides una imagen?»*
