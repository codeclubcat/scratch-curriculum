---
title: Tarjeta Scratch - Tentacles
level: Nivell 4
language: ca-ES
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Llista de tasques {.check}


+ Per generar un moviment dels tentacles, podeu **rotar-los** i **canviar-los** la mida utilitzant un bloc `aleatori`{.blockgreen} amb valors baixos, i llavors esperar un període curt de temps abans de tornar-los a la forma original.

```blocks
	assigna a [rotacioTentacle v] el valor (nombre a l'atzar entre (1) i (20))
	assigna a [midaTentacle v] el valor (nombre a l'atzar entre (1) i (10))
	augmenta (midaTentacle) la mida
	gira ccw (rotacioTentacle) graus
	espera (0.5) segons
	augmenta ((midaTentacle * (-1)) la mida
	gira cw (rotacioTentacle) graus
```
	
 	***(Tingueu en compte que estem multiplicant per -1 per tenir els valors negatius de midaTentacle)**
	
