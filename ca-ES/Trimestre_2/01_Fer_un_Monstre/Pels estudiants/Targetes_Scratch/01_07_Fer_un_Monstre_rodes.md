---
title: Targeta Scratch - Rodes
level: Nivell 4
language: ca-ES
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Llista de tasques {.check}

+ Per fer que una roda sembli que es mogui, haurem de **rotar-la** i moure-la una mica cada com rebem un **missatge de moviment**.
```scratch
	quan rebi [mogut esquerra v]
		suma ((moure velocitat) * (-1)) a x
		gira ccw (15) graus

	quan rebi [mogut dreta v]
		suma (moure velocitat) a x
		gira cw (15) graus
```

+ Si voleu, podeu canviar els valors per variables del tipus `moure_velocitat`{.blockorange} per tal de poder controlar la velocitat en totes les direccions des d'un sol lloc.
