# Episodio 2 · Instalar R y RStudio

**Objetivo:** dejar R funcionando y comprobar que RStudio lo encuentra.
**Antes de empezar:** 10 minutos y conexión a internet.

## El orden importa

1. **R** (el motor) — se descarga del CRAN: <https://cran.r-project.org>
   - Windows: *Download R for Windows* → *base* → *Download R for Windows*.
   - macOS: *Download R for (Mac) OS X*.
2. **RStudio Desktop** (la ventana) — se descarga de Posit: <https://posit.co/download/rstudio-desktop>
   - No lo busques en el CRAN: ahí no está.

Instala R primero. Si haces lo contrario, RStudio abre pero no puede ejecutar nada.

## Verificación

Abre RStudio y mira la **consola** (abajo a la izquierda). Debe empezar con `>` y mostrar la versión de R:

```
R version 4.x.x ...
```

Si ves eso, quedó listo. También puedes correr el archivo [`ep02_verificar_instalacion.R`](ep02_verificar_instalacion.R).

## Qué deberías ver

```
> R.version.string
[1] "R version 4.4.1 (2024-06-14 ucrt)"

> 2 + 2
[1] 4
```

(La versión exacta cambia con el tiempo; lo importante es que diga `R version`.)

## Errores comunes

| Síntoma | Causa | Solución |
|---|---|---|
| «RStudio no encuentra R» / la consola no responde | Se instaló RStudio primero | Instala R, cierra RStudio y ábrelo otra vez |
| El instalador de R no termina | Permisos o antivirus | Ejecuta como administrador y desactiva temporalmente el antivirus |
| Aparece R pero no RStudio | Es normal: son dos programas distintos | Instala RStudio Desktop desde Posit |
| Todo abre pero no hay consola | El panel se cerró | *View → Panes → Show Console* |

## Detalle que se suele enseñar mal

- **R no necesita paquetes para funcionar.** R base suma, promedia y grafica. Los paquetes *amplían*, no *habilitan*.
- **"Librería" no es sinónimo de paquete.** En R, la librería es la carpeta donde viven los paquetes.
- Cuando instales un paquete: `install.packages("x")` **una vez por computador**; `library(x)` **cada vez** que abres RStudio.

## Siguiente

[Episodio 3 · Tu primer código](../ep03-tu-primer-codigo): qué es cada una de las cuatro ventanas que acabas de abrir.
