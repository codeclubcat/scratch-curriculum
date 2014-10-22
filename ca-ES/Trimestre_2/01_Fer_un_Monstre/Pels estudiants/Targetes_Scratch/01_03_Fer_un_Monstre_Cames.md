---
title: Targeta Scratch - Cames
level: Nivell 4
language: ca-ES
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

## Llista de tasques { .check}

+ Utilitzant dos **objectes cama** podem fer que sembli que el monstre camini. Per fer això, necessitem assignar una **variable** que s'intercanviï entre els dos estats, un perquè la cama es balancegi cap endavant i l'altre perquè es balencegi cap enrere (i caldrà que invertim aquests estats per l'altra cama).

Primer de tot, necessitem assignar la variable `pas`{.blockorange}, llavors cada vegada que rebem envia a tots 'mogut', **incrementarem un punt la variable**. Si la variable és més gran que 1 (podem fer-ho utilitzant l'operador més gran que `>`{.blockgreen}) la tornarem a posar a **zero**.

```scratch
	quan la BANDERA VERDA es premi
		assigna a [velocitat moviment v] el valor [5]
		assigna a [pas v] el valor [0]

	quan rebi [mogut esquerre v]
		augmenta [pas v] en [1]
		si < (pas) > [1] > llavors
			assigna a [pas v] el valor [0]
		fi

	quan rebi [mogut dreta v]
	augmenta [pas v] en [1]
	si < (pas) > [1] > llavors
		assigna [pas v] el valor [0]
	fi
```
+ Ara podem fer que les cames pivotin quan comprovin l'estat de la variable `pas`{.blockorange}. **Quan la variable estigui a zero** podem canviar la direcció de la cama (aquí hem utilitzat una direcció fixa `direcció`{.blockblue} per parar les cames si es tornen boges quan la variable angle no funcioni, però potser ja us estarà bé que el monstre ho faci!).

No hem d'oblidar moure les cames conjuntament amb el moviment del cos utilitzant la variable `velocitat moviment`{.blockorange}.

```scratch
	quan rebi [mogut dreta v]
		suma (velocitat moviment) a x
		si < (pas) = [0] >
			apunta en direcció (180 v)
		si no
			apunta en direcció (165 v)
		fi

	quan rebi [mogut esquerre v]
	suma ((velocitat moviment) * [-1]) a x
	si < (pas) = [1] >
		apunta en direcció (165 v)
	si no
		apunta en direcció (180 v)
	fi
```

**Podeu utilitzar el mateix grup d'accions per fer que els braços es moguin com onades o bateguin com si fossin ales d'ocell.**
