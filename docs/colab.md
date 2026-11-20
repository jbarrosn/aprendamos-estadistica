# Practicar sin instalar R

Si no puedes instalar R y RStudio en tu computador, hay dos caminos que funcionan en el navegador. Los dos son gratis para lo que hacemos en el módulo 0.

| Opción | Qué es | Cuándo conviene |
|---|---|---|
| **Google Colab** | Un cuaderno en la nube con R, sin instalar nada | Computador prestado, tablet, o si no puedes instalar programas |
| **Posit Cloud** | RStudio completo en el navegador | Quieres la misma pantalla del video (script, consola, environment) |
| RStudio local | El programa instalado | Es lo recomendado a largo plazo (episodio 2) |

---

## Opción 1 · Google Colab (cuaderno, sin instalar)

### Preparar el cuaderno

1. Entra a <https://colab.research.google.com> con tu cuenta de Google.
2. **Archivo → Nuevo cuaderno**.
3. Arriba, **Runtime → Change runtime type** (*Entorno de ejecución → Cambiar tipo de entorno*).
4. En **Runtime type** elige **R** (viene en Python 3) y pulsa **Save**.
5. Comprueba que arriba a la derecha diga **Connect** / **Conectado**.

> Sin este paso, el cuaderno interpreta Python y todo lo de R falla con `SyntaxError`.

### Cómo se ejecuta

- Cada recuadro es una **celda**. Se ejecuta con el botón ▶ o con **Shift + Enter**.
- **Ctrl + Enter** ejecuta la celda y se queda en ella.
- Las celdas se ejecutan **en orden**: si saltas una, lo de arriba no existe.

### Hacer la práctica del episodio 3

1. Abre el archivo [`practica/ep03-primer-codigo/ejercicios.R`](../practica/ep03-primer-codigo/ejercicios.R) en GitHub.
2. Pulsa **Raw** y copia todo el texto.
3. En Colab, crea una celda, pega el archivo completo y ejecútala con **Shift + Enter**.

Funciona porque el corrector (`check()`) y los seis ejercicios quedan en la misma celda. Si prefieres separarlos, ejecuta **primero** la celda del corrector.

### Diferencias con RStudio (importante)

| En RStudio | En Colab |
|---|---|
| Hay un panel *Environment* | No existe: usa `ls()` para ver los objetos |
| `?mean` abre el panel de ayuda | `?mean` imprime la ayuda como texto |
| El script se guarda en un archivo | El código vive en las celdas; descarga el cuaderno para conservarlo |
| La sesión sigue abierta | Al cerrar el cuaderno, la sesión se pierde: vuelve a ejecutar |
| Los gráficos van al panel *Plots* | Los gráficos salen dentro del cuaderno |

### Subir un archivo (cuando lleguen los datos)

En el panel izquierdo, icono de carpeta → **Upload**. El archivo queda en `/content`, y se lee con `read.csv("archivo.csv")`.

---

## Opción 2 · Posit Cloud (RStudio en el navegador)

Más parecido a lo que ves en el video: mismos cuatro paneles.

1. Entra a <https://posit.cloud> y crea una cuenta gratis.
2. **New Project → New RStudio Project**.
3. En el panel *Files*, crea un archivo nuevo (o pega el código en la consola).
4. Ejecuta línea por línea con **Ctrl + Enter**, igual que en RStudio.

El plan gratuito tiene un límite de horas al mes y las sesiones se suspenden cuando no se usan; el proyecto queda guardado.

---

## ¿Y si me quedo con R instalado?

Es lo mejor a mediano plazo: no dependes de internet ni de una sesión que se borra. El [episodio 2](../modulo-0/ep02-instalar-r-y-rstudio) explica la instalación paso a paso, y el [episodio 3](../modulo-0/ep03-tu-primer-codigo) explica las cuatro ventanas.

## Problemas frecuentes en Colab

| Síntoma | Causa | Solución |
|---|---|---|
| `SyntaxError` al ejecutar R | El runtime quedó en Python | Runtime → Change runtime type → R |
| `could not find function "check"` | No ejecutaste la celda del corrector | Ejecuta primero esa celda |
| `object 'panes' not found` | Saltaste el ejercicio 1 | Ejecuta las celdas en orden |
| Se perdió todo al volver | La sesión es temporal | Vuelve a ejecutar el cuaderno |
| `install.packages` tarda mucho | Compila desde cero | Normal la primera vez en la nube |
