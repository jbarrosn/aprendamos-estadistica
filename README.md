# Aprendamos Estadística · curso de R

Curso de estadística en R, en episodios cortos. Cada episodio es un video de un minuto **y** una carpeta aquí con el código completo, para que lo copies y lo corras tú.

> Una línea al día. Si tú llegas al final, yo lo explico simple.

## Cómo usar el repositorio

```bash
git clone https://github.com/jbarrosn/aprendamos-estadistica.git
```

1. Abre `aprendamos-estadistica.Rproj` (doble clic; se abre RStudio en la carpeta correcta).
2. Entra a la carpeta del episodio que estés viendo.
3. Abre el archivo `.R` y corre línea por línea con **Ctrl + Enter**.
4. Compara lo que sale en tu consola con la sección *«Qué deberías ver»* del `README.md`.
5. Haz la práctica del episodio en [`practica/`](practica): se corrige sola.

No hay que instalar nada más: todo el módulo 0 usa R base.

## Mapa del curso

| Módulo | Ep. | Tema | Carpeta | Video |
|---|---|---|---|---|
| 0 | 1 | Qué es R y por qué empezamos aquí | — | — |
| 0 | 2 | Instalar R y RStudio (en ese orden) | [`modulo-0/ep02-instalar-r-y-rstudio`](modulo-0/ep02-instalar-r-y-rstudio) | — |
| 0 | 3 | Tu primer código: el mapa de RStudio | [`modulo-0/ep03-tu-primer-codigo`](modulo-0/ep03-tu-primer-codigo) | — |
| 0 | 4 | Tu primer gráfico | *en producción* | — |
| 1 | — | Del dato a la decisión | *pendiente* | — |

Los enlaces de video se agregan al publicar cada episodio. La versión exacta que se usó en un video queda etiquetada con un tag (`ep02`, `ep03`, …), así puedes comparar dos episodios:

```bash
git diff ep02 ep03
```

## Práctica

Ver el video no alcanza. Cada episodio tiene su área en [`practica/`](practica) con ejercicios que **se corrigen solos**: escribes tu respuesta, corres el archivo y la consola te dice `✓` o `✗` con lo que se esperaba.

| Episodio | Práctica | Qué entrenas |
|---|---|---|
| 2 | [`practica/ep02-instalacion`](practica/ep02-instalacion) | consola, aritmética, comprobar la versión |
| 3 | [`practica/ep03-primer-codigo`](practica/ep03-primer-codigo) | objetos, funciones, errores de nombre |

La regla es la misma en todos: **primero el `✗`, después la solución.** Si abres `soluciones.R` antes de intentarlo, el ejercicio no cuenta.

## Cómo se produce cada episodio

El repositorio y el video se escriben **en paralelo**, pero el texto manda:

1. Aquí se escribe el `README.md` del episodio (objetivo, código, salida esperada, errores).
2. El `script.R` de esa carpeta es el código que aparece en el video, línea por línea.
3. El video se graba desde ese texto: si algo cambia, cambia primero aquí.
4. Al publicar, se crea el tag del episodio y se enlaza el video en la tabla de arriba.

Regla: **si el video y esta carpeta no coinciden, la carpeta es la verdad.**

## Requisitos

- R 4.2 o superior y RStudio (episodio 2).
- Para el módulo 0, nada más.

## Licencia

- Código: [MIT](LICENSE).
- Textos y videos: [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/deed.es). Puedes reutilizarlos citando la fuente.

## Autor

Jhon Barros · [@jhonbarros48](https://www.tiktok.com/@jhonbarros48)
