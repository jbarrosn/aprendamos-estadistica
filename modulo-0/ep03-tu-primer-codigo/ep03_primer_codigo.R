# Episodio 3 · Tu primer código en R
#
# Corre línea por línea con Ctrl + Enter.
# El README de esta carpeta explica qué deberías ver en cada bloque.

# 1. El script: la receta que se guarda
panes <- c(38, 41, 45, 47)
panes

# 2. La consola: aquí todo se ejecuta
2 + 3 * 4
mean(panes)

# 3. El environment: lo que R tiene en memoria
# (mira el panel de arriba a la derecha después de correr las líneas)
ls()

# 4. Las herramientas: plots y ayuda
plot(panes)
?mean

# 5. Todo en R es una función
`+`(2, 3)
round(mean(panes), 1)

# 6. El error más común: el nombre mal escrito
# Descomenta la línea siguiente para ver el error en tu consola.
# mean(Pane)
#
# Error: object 'Pane' not found
#
# No es la fórmula: es la ortografía. R distingue mayúsculas.
mean(panes)
