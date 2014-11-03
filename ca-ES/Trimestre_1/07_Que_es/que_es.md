---
title: Què és?
level: Nivell 3
language: ca-ES
stylesheet: scratch
embeds: "*.png"
materials: "*.sb2"
...

# Introducció {.intro}

Una animació aleatoria aparareix a la pissarra completament distorsionat. Haureu d'endevinar què és seleccionant la imatge correcta. Quant més ràpid l'endevineu, més alta serà la vostra puntuació!

<!-------------------------------------------------------------------------------------->

# Pas 1: Feu aparèixer personatges diferents a la pissarra {.activity}

__Volem fer aparèixer uns quants objectes diferents a la pissarra.__

## Llista de tasques {.check}

+ Creeu un nou projecte d'Scratch i suprimiu el personatge Fèlix.
+ Feu clic a l'escenari i després a la pestanya Fons. Importeu el fons interiors/chalkboard (pissarra). 
+ Importeu un nou personatge i doneu-li el nom que volgueu. Podeu escollir-ne algun de la carpeta 'coses'.
+ Col.loqueu-lo al centre de la pantalla. Feu-lo més gran o més petit si us cal.
+ Feu clic a la pestanya de vestits i importeu quatre personatges més. Poden ser el que volgueu! I ara, fem que aparegui una imatge aleatòria. 
+ Creeu aquest programa:
```scratch
	Quan la BANDERA VERDA es premi
		repeteix (nombre a l'atzar entre (1) i (5)) vegades
		    següent vestit
```

## Proveu el projecte {.flag}

__Feu clic a la bandera verda.__

L'animació canvia de vestit?

__Feu-hi clic més vegades.__

Obteniu vertits diferents cada vegada? A vegades obtindreu el mateix vestit consecutivament, no us amoineu: és normal. Noteu també que el personatge parpelleja quan canvia de vestit. Ho arreglarem en el pas següent.

## Deseu el projecte {.save}
 
<!-------------------------------------------------------------------------------------->

# Pas 2: Distorsioneu les imatges {.activity}

__A continuació distorsionarem les imatges quan apareguin i les corregirem al cap d'uns segons.__

Emprarem una variable de puntuació (puntuació) per controlar el grau de distorsió. Si la puntuació és elevada, hi haurà molta distorsió. La distorsió disminuirà, quan ho faci la puntuació. La variable funcionarà també com a cronòmetre, de la mateixa manera que ho fa la variable del bloc de Sensors __cronòmetre.__

## Llista de tasques {.check}

+ Al bloc de Dades, creeu una nova variable i anomeneu-la puntuació. 
+ Modifiqueu el programa així:
```scratch
	Quan la BANDERA VERDA es premi
       amaga
       repeteix (nombre a l'atzar entre (1) i (5)) vegades
          següent vestit
       fi
       assigna a [puntuació v] el valor (110)
       repeteix fins <(puntuació) = (0)>
          augmenta [puntuació v] en [-10]
          fixa l'efecte [pixelar v] a (puntuació)
          fixa l'efecte [color v] a (puntuació)
          mostra
          espera (1) segons
```

## Proveu el projecte {.flag}

__Feu clic a la bandera verda.__

+ Apareix una imatge aleatòria i distorsionada?
+ El nivell de distorsió disminueix gradualment?
+ La variable puntuació disminueix quan la imatge redueix el grau de distorsió?
+ Quan puntuació arriba a zero, observeu una imatge sense cap distorsió?
+ Cada cop que premeu la bandera verda, observeu una imatge diferent?

## Deseu el projecte {.save}

## Per saber-ne més {.try}

+ __Proveu de canviar el valor inicial de la variable puntuació i quina quantitat canvia.__ Com afecten aquests canvis a la imatge? És més fàcil o més difícil d'endevinar què és?

+ __Proveu efectes gràfics diferents enlloc de pixelar.__ Noteu com varia el grau de dificultat per endevinar el personatge.

<!-------------------------------------------------------------------------------------->

# Pas 3: Permeteu al jugador endevinar la imatge {.activity}

Fins ara hem fet aparèixer gradualment la nostra imatge aleatòria, mentre la puntuació decreixia amb el temps, però com ho hem de fer per poder guanyar? Afegirem algunes animacions al final de la pantalla de manera que el jugador pugui seleccionar-los. Si premen la imatge correcta, guanyen al joc, sinó, l'animació desapareixerà i el joc continuarà.

Primer, és necessari conèixer quina és la resposta correcta.

+ Creeu una variable anomenada __resposta__. Assegureu-vos que és vàlida per a totes les animacions.
+ Modifiqueu el programa que heu escrit per emmagatzemar la resposta correcta:
```scratch
	Quan la BANDERA VERDA es premi
       amaga
       repeteix (nombre a l'atzar entre (1) i (5)) vegades
          següent vestit
       fi
       assigna a [resposta v] el valor (vestit #)
       assigna a [puntuació v] el valor (110)
       repeteix fins <(puntuació) = (0)>
          augmenta [puntuació v] en [-10]
          fixa l'efecte [pixelar v] a (puntuació)
          fixa l'efecte [color v] a (puntuació)
          mostra
          espera (1) segons
       fi
```	

__Ara afegirem els personatges perquè el jugador els pugui prémer.__

+ Dupliqueu el personatge principal i arrosegueu el duplicat fins a la cantonada esquerra i a baix de l'escenari.
+ Anomeneu-lo __resposta1.__ (Així serà més fàcil referir-s'hi.)
+ Elimineu el programa de __resposta1__ i tots els seus vestits excepte el primer.
+ Repetiu els tres últims passos, anomenant __resposta2__ el nou personatge i elimineu el programa i tots els seus vestits excepte el segon. 
+ Repetiu-ho tres cops més anomenant __resposta3__, __resposta4__ i __resposta5.__
Hauríeu d'obtenir una fila de cinc personatges 'resposta' al final de l'escenari, cadascun mostrant un vestit diferent al del personatge principal. __Cap d'aquests personatges hauria de tenir associat un programa.__

Arribats aquí, voldrem que quan fem clic en cadascun dels personatges, aquests facin alguna cosa en funció de si la resposta és correcta o no.

+ Afegiu aquest programa al personatge resposta1:
```scratch
	Quan es cliqui aquest personatge
       si ((resposta) = (1)) llavors
          envia a tots [encert v]
       si no
          amaga
```

+ Arrossega aquest programa a cadascun dels altres personatges resposta. __A cada personatge, canvia 1 per 2, 3, etc.__ 
+ Ara cal afegir alguna cosa que respongui al missatge 'encert'. Torneu al personatge, al que està a la pissarra i afegiu-li aquest programa: 
```scratch
	quan rebi [encert v]
	   digues [Felicitats! Heu augmentat la puntuació]
```

## Proveu el projecte {.test}

__Feu clic a la bandera verda.__

+ Quan proveu el joc, podeu emprar el camp de l'escenari __resposta monitor__  per escriure quina és la resposta correcta. Això us pot ajudar mentre feu proves.
+ Què succeeix quan feu clic a __resposta correcta__?
+ Què succeeix quan feu clic a __resposta incorrecta__?
+ Què li succeeix a __resposta incorrecta__ quan comenceu una nova partida?

Aquesta prova presenta dos problemes. Primer, les respostes errònies no reapareixen al començar una nova partida. Segon, la puntuació continua disminuint un cop s'ha especificat la resposta correcta.

+ Per solucionar el primer problema, afegeix aquest programa a les cinc animacions:
```scratch
    Quan la BANDERA VERDA es premi
        mostra
```

Per solucionar el segon, haureu de parar la repetició de  __què és__ fins que el jugador faci clic a la resposta correcta. Per fer-ho emprarem una nova variable. Li donarem el valor 0 quan comenci la partida i li donarem el valor 1 quan el jugador guanyi. Farem que la repetició 'repeteix fins' finalitzi quan la puntuació arribi a 0 o bé quan __encert?__ s'assigni a __1.__

+ Creeu una nova variable i anomeneu-la encertat?
+ Modifiqueu els programes de la següent manera:
```scratch
	Quan la BANDERA VERDA es premi
       amaga
       repeteix (nombre a l'atzar entre (1) i (5)) vegades
          següent vestit
       fi
       assigna a [resposta v] el valor (vestit #)
       assigna a [puntuació v] el valor (110)
       assigna a [encert v] el valor (0)
       repeteix fins <(puntuació) = (0)>
          augmenta [puntuació v] en [-10]
          fixa l'efecte [pixelar v] a (puntuació)
          fixa l'efecte [color v] a (puntuació)
          mostra
          espera (1) segons
       fi
    Quan rebi [encert v]
      assigna a [encertat? v] el valor (1)
      treu els efectes gràfics
      digues [Felicitats! Heu augmentat la puntuació]
```

## Deseu el projecte {.save}

__Felicitats! Heu finalitzat el joc!__

Per saber-ne més, intenteu els següents reptes!

## Repte 1: Feu que el joc sigui més fàcil o més difícil {.challenge}

Modifiqueu el grau de dificultat del joc.

* Intenteu modificar la velocitat amb la que la imatge es mostra sense distorsionar i com de ràpid disminueix la puntuació.
* Intenteu modificar els tipus de distorsió aplicades a la imatge.
* Intenteu modificar les imatges per fer-les més semblants o diferents entre elles. Si proveu aquesta part, no us oblideu de modificar la resposta (resposta) de cada vestit.

## Deseu el projecte {.save}

## Repte 2: Distorsioneu la imatge de forma diferent a cada partida {.challenge}

Fins ara cada jugada utilitza el mateix tipus de distorsió. En el pas 2, heu provat diferents tipus de distorsions que funcionaben prou bé.

Trobeu distorsions diferents que funcionin bé.

Modifiqueu el joc de manera que cada partida utilitzi una distorsió diferent.

__Ajut:__ Intenteu crear una nova variable, anomenada distorsió. Fixeu-li un valor a l'atzar al començar la partida. Utilitzeu blocs condicionals dins el bucle per tal d'aplicar la distorsió que correspongui.

## Deseu el projecte {.save}

## Repte 3: Feu que el joc disposi de varis intents {.challenge}

Fins ara cada joc és independent. Canvieu-lo de manera que tingui varis intents. Per exemple, feu que tingui tres intents de manera que el jugador hagi d'endevinar tres imatges i pugui aconseguir fins a 300 punts.

__Ajut:__ Necessitareu una variable extra per emmagatzemar la puntuació total dels 3 intents. La podeu anomenar puntuacio_partida. També necesitareu un bucle que passi pels diferents intents.

__Ajut:__ Haureu de fer reaparèixer de nou totes les imatges de les respostes errònies al principi de cada intent. Podeu enviar el missatge reset, per exemple a través de la instrucció __envia a tots__.

## Deseu el projecte {.save}

## Repte 4: Incrementeu la dificultat de cada intent {.challenge}

Quan el jugador avanci pels diferents intents, incrementeu-ne el nivell de dificultat, per exemple modificant-ne els efectes de distorsió.

Cada intent ha de puntuar el mateix? Hi ha alguna manera d'obtenir més punts quan s'endevini més ràpidament la resposta en etapes més difícils? Quina?

__Ajut:__ Com sabreu en quin intent us trobeu? Com podreu emprar aquesta informació per modificar el nivell de dificultat i la puntuació? 

## Deseu el projecte {.save}

## Repte 5: Continueu el joc fins que el jugador cometi un error {.challenge}

Enlloc d'assignar un nombre finit d'intents, feu que el joc continui fins que el jugador s'equivoqui. Això només tindrà sentit si el joc es complica a mesura que avancen  els intents.


##Repte 6: Varieu la dificultat del joc en funció de com de bé ho faci el jugador

Enlloc d'incrementar sempre la dificultat, feu que el grau de dificultat s'ajusti al nivell de jugador. Si endevina la imatge ràpidament, feu que el següent intent sigui més difícil. Si, al contrari, el jugador no l'encerta o triga molt a fer-ho, feu el següent intent més senzill.

Aquesta idea només funcionarà si no sumeu les puntuacions a través dels intents.

## Deseu el projecte {.save}

## Repte 7: Guardeu la puntuació més alta {.challenge}

Si algú aconsegueix millorar la puntuació més alta assolida fins llavors, demaneu-li el nom al jugador i actualitzeu la millor puntuació. Asegureu-vos que la puntuació més alta i el nom del jugador que l'ha aconseguit es mostrin a la pantalla.

## Deseu el projecte {.save}

## Repte 8: Penalitzeu les respostes errònies {.challenge}

Fins ara no hi ha cap penalització si el jugador selecciona totes les animacions tan de pressa com pugui. Modifiqueu el joc de manera que la puntuació disminueixi una mica cada vegada que es premi un resposta incorrecta.

Considereu que el joc millora?

## Deseu el projecte {.save}

__Felicitats! Heu finalitzat el joc i ara a gaudir-ne!__

No oblideu que podeu compartir-lo amb els amics i la familia fent clic al botó __Comparteix__ a la barra del menú.
