---
title: Targeta Scratch - Ulls
level: Nivell 4
language: ca-ES
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Llista de tasques { .check}

+ Podeu fer que els ulls del vostre monstre segueixin el ratolí per tota la pantalla. Penseu que el vostre monstre pot tenir tants ulls com vulgueu! Per fer que els ulls del monstre segueixin sempre el punter del ratolí necessitem el bloc  `per sempre`{.blockyellow}.

  Una vegada hàgim activat la **bandera verda** voldrem que els ulls apuntin `per sempre`{.blockyellow} a la direcció del punter del ratolí i que es re-ajustin a cada fracció de segon. 
```scratch
quan la BANDERA VERDA es premi
	per sempre
		apunta cap a [punter del ratolí v]
		espera (0.2) segons

quan rebi [mogut dreta v]
	assigna el valor (velocitat moviment) a x

quan rebi [mogut esquerre v]
	assigna el valor ((velocitat moviment) * (-1)) a y
```

Fixeu-vos que hem utilitzat _envia a tots_ per moure els ulls juntament amb el cos i altres parts. Què més podem fer que facin els seus ulls? Si movem el cursor del ratolí entre els ulls del monstre els creuarà!
