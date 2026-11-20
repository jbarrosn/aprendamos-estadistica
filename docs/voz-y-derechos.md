# La voz del curso y sus derechos

## Qué pasó

El Ep. 3 se publicó con una voz generada por **`edge-tts`**, una librería no oficial que usa el
servicio «Leer en voz alta» de Microsoft Edge. TikTok retiró el video porque el audio se declaró
como **sonido original** y no hay derechos documentados sobre esa salida.

Esto no es un malentendido de la plataforma: es un problema real de licencia.

## Lo que dicen las condiciones

- Microsoft cede derechos de uso comercial del audio generado **solo para el nivel de pago de
  Azure AI Speech (S0)**: «For Customers of the paid tier TTS Service only, Customer may use the
  audio output of prebuilt neural voices … including for commercial purposes»
  ([Product Terms](https://www.microsoft.com/licensing/terms/productoffering/MicrosoftAzure/allprograms)).
- Sobre Edge Read Aloud y `edge-tts`, Microsoft **no publica** esa cesión. Una respuesta oficial lo
  dice explícitamente: no hay confirmación pública de que puedas redistribuir ese audio
  ([Microsoft Q&A](https://learn.microsoft.com/en-au/answers/questions/6007729/commercial-use-of-microsoft-edge-text-to-speech-vi)).
- En Azure, el nivel **gratuito (F0)** tampoco sirve para uso comercial: es solo para pruebas.

## Lo que NO hay que hacer

- **Volver a subir el mismo audio.** El reclamo vuelve, y una reincidencia pesa más en la cuenta.
- **Apelar.** La apelación se resuelve con la licencia en la mano; aquí no la hay.
- **Cambiar de voz y ya.** Esquiva la huella del audio, no el problema legal: sigue siendo una voz
  de Microsoft sin derechos.

## Camino 1 · Tu propia voz (recomendado)

Es el único camino en el que los derechos son tuyos sin discusión, y además suena mejor para un
curso: la gente sigue una voz humana.

```powershell
# 1. Saca la lista exacta de frases y nombres de archivo
python tools/generar_ep3.py --listar

# 2. Graba una frase por archivo, con el nombre que indica la lista
#    (orden_0.mp3, orden_1.mp3, …, practica_2.mp3, cierre_idea.mp3, …)

# 3. Genera la narración desde tus grabaciones
python tools/generar_ep3.py --grabaciones "C:\ruta\a\mis-grabaciones"

# 4. Renderiza
npm run render:ep3
```

Detalles que importan:

- **Una frase por archivo**, sin silencios largos al inicio ni al final (el script los recorta).
- Formato indistinto: `.mp3`, `.wav`, `.m4a`, `.ogg` o `.flac`. Se normaliza a mono 44.1 kHz.
- Graba en un cuarto silencioso, a un palmo del micrófono, siempre a la misma distancia.
- Si te equivocas en una frase, vuelve a grabar **solo ese archivo**: no hay que rehacer el resto.
- Los tiempos del karaoke se recalculan con la duración real de cada frase.

## Camino 2 · Azure AI Speech, nivel de pago

Si prefieres voz sintética, esta es la vía con derechos documentados y el mismo timbre que usamos.

1. Crea un recurso **Speech** en Azure con plan **Standard S0** (no F0).
2. Copia la clave y la región (por ejemplo `eastus`).
3. Genera la voz:

```powershell
$env:AZURE_TTS_KEY = "tu-clave"
python tools/generar_ep3.py --azure-key $env:AZURE_TTS_KEY --azure-region eastus
npm run render:ep3
```

**Costo real del episodio:** ~1.200 caracteres. A la tarifa estándar (≈ 15 USD por millón de
caracteres) son **menos de 3 centavos** por episodio. El nivel S0 también habilita las voces HD.

## Camino 3 · Voz local de código abierto

Existen modelos abiertos (Piper, Kokoro) que corren sin conexión. Antes de usarlos hay que revisar
la licencia de **cada modelo de voz**, porque no todos permiten uso comercial: la licencia del
motor no cubre automáticamente los datos con que se entrenó la voz.

## Después de cambiar la voz

1. `python tools/generar_ep3.py …` reescribe `guion_ep3.ts` con los tiempos nuevos.
2. `npm run render:ep3` (si el render falla por memoria: `--concurrency=1 --x264-preset=veryfast`).
3. Sube 2 dB el audio para llegar a −14 LUFS (lo hace `reparar_render.ps1`).
4. Vuelve a publicar **sin** reclamar la autoría del sonido si usaste una voz sintética.

## Registro

| Episodio | Voz | Estado legal |
|---|---|---|
| Ep. 1 | — | — |
| Ep. 2 | `edge-tts` | ⚠️ no publicar |
| Ep. 3 | `edge-tts` | ❌ retirado por TikTok |
| Ep. 4 en adelante | propia o Azure S0 | ✅ |
