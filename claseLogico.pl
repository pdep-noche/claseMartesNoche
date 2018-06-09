suma(Numero, OtroNumero, Total):-Total is Numero + OtroNumero.

sumaMartillo(nora, 12).
sumaMartillo(pedro, 13).

puntajeFuerzaMartillo(Persona, Puntaje):-
							sumaMartillo(Persona, Metros),
							puntaje(Metros, Puntaje).

puntaje(CantMetros, 3):- CantMetros < 5.
puntaje(CantMetros,6):-between(5,10, CantMetros).
puntaje(CantMetros, Puntaje):-CantMetros > 10, 
					Resto is CantMetros - 10, 
					puntajeTotal(Resto, Puntaje).

puntajeTotal(Resto, Puntaje):- Puntaje is (Resto *2) + 9.

madre(mona, homero).
madre(jaqueline, marge).
madre(marge, maggie).
madre(marge, bart).
madre(marge, lisa).
padre(abraham, herbert).
padre(abraham, homero).
padre(clancy, jaqueline).
padre(homero, maggie).
padre(homero, bart).
padre(homero, lisa).

hermano(Persona, OtraPersona):- 
               mismoPadre(Persona, OtraPersona), 
			   mismaMadre(Persona, OtraPersona).

mismoPadre(Persona, OtraPersona):- 
				padre(Padre, Persona), 
				padre(Padre, OtraPersona), 
				Persona \= OtraPersona.

mismaMadre(Persona, OtraPersona):-
			madre(Madre, Persona), 
			madre(Madre, OtraPersona), 
			Persona \= OtraPersona.
			
%medioHermano(Persona, OtraPersona)
medioHermano(Persona, OtraPersona):-
			mismaMadre(Persona, OtraPersona),
			not(mismoPadre(Persona, OtraPersona)).
medioHermano(Persona, OtraPersona):-
			mismoPadre(Persona, OtraPersona), 
			not(mismaMadre(Persona, OtraPersona)).
			
hijoUnico(Persona):-hijo(Persona, _), 
					not(hermano(Persona, _)), 
					not(medioHermano(Persona, _)).

hijo(Persona, Madre):-madre(Madre, Persona).
hijo(Persona, Padre):-padre(Padre, Persona).

tio(Tio, Sobrino):-hijo(Sobrino, Padre), 
				   medioHermano(Padre, Tio).


			
			   
			   
			   
					