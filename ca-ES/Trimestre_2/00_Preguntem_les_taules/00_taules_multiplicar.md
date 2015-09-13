---
 Comenceu un projecte nou de Scratch. Aneu a la finestra __personatges__ Elimineu el gat (premeu el botó dret damunt del gat i llavors __esborra__ . Si aquesta instrucció no funciona, premeu majúscules i apreteu el botó esquerra del ratolí).
 Creeu un nou personatge. El podeu agafar de la galeria de personatges o el podeu dibuixar vosaltres mateixos clicant el pinzell. Nosaltres hem triat *bear-2* de la galeria.
 Situeu el personatge una mica a l'esquerra de l'escenari.
 Aneu a l'escenari. Trieu un fons que us motivi de la galeria o dibuixeu-lo vosaltres mateixos. Nosaltres hem triat *stage-1*.
 Cliqueu la pestanya de `Programes`.
 Feu que el personatge digui: 'Prem la tecla espai per obtenir una taula'.
 Ara caldrà generar dos nombres a l'atzar i multiplicar-los. Per fer això ens caldrà generar 3 variables. Cliqueu la paleta `Dades`{.blockorange} i després al botó *Crea una Variable*. Anomeneu-la `nombre 1` { .blockorange } i seleccioneu la opció **"Per a tots els personatges"**, i també desmarqueu la caixeta al costat de la variable perquè no es vegi a l'escenari. Feu el mateix creant dues variables més, `nombre 2` { .blockorange } i `resultat` { .blockorange }.
 Cada vegada que es premi la tecla espai, hem de donar valors a l'atzar als dos nombres i multiplicar-los. Aquests dos nombres estan compresos entre l'1 i el 10. Posarem el resultat de la multiplicació a la variable `resultat` { .blockorange }.
 Ara caldrà preguntar al jugador el resultat de multiplicar els dos nombres. Per fer-ho, farem servir la instrucció `pregunta`{ .blocklightblue } (a la paleta de `Sensors` { .blocklightblue }).
 El jugador escriurà la resposta per pantalla i nosaltres haurem de comprovar que la resposta és correcta. Això ho farem de la manera següent:
 Anem a afegir un marcador que ens digui el nombre de taules encertades i fallades. Creeu una variable per a tots els personatges anomenada `marcador` { .blockorange }.
 Reinicieu la variable `marcador` { .blockorange } a zero al començar la partida. Afegiu el següent al bloc inicial:
 Ara només falta augmentar un punt al marcador per a cada resposta encertada i restar-ne un per a cada resposta fallada: