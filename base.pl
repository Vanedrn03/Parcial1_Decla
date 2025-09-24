personaje(shrek).
personaje(lord_farquard).
personaje(enanos).
personaje(hadas).
personaje(lobos).
personaje(oso).
personaje(gengibre).
personaje(burro).
personaje(fiona).
personaje(dragona).

vive_en(shrek, pantano).
vive_en(lord_farquard, castillo).
vive_en(fiona, castillo).
vive_en(dragona, castillo).
vive_en(enanos, pantano).
vive_en(hadas, pantano).
vive_en(lobos, pantano).
vive_en(oso, pantano).
vive_en(gengibre, pantano).
vive_en(burro, pantano).
vive_en(fiona, pantano).

amigo(shrek, burro).

rescata(shrek, fiona).
rescata(burro, fiona).

desea(lord_farquard, fiona).
desea(lord_farquard, rey).
desea(shrek, paz).

transforma_en(fiona, noche).

valiente(shrek).

feroz(dragona).
feroz(shrek).


%Viven pantano
%?- vive_en(Personaje, pantano).

%amigos
friend(X) :- amigo(shrek,X); amigo(X,shrek);fail.
friend(_).
%?-friend(X).

%casarse Fiona
%?- desea(Personaje, fiona).

%Rescata
%?- rescata(shrek, fiona).

%transforma
%?- transforma_en(Personaje, noche).

%who is valiente
who_valiente(X) :- valiente(X).
%?- valiente(X).

%feroz
%?- feroz(Personaje).

%Personajes expulsados
 expulsados(Personaje) :- 
    vive_en(Personaje, pantano), Personaje \= shrek, Personaje \= fiona , Personaje \= burro.
%?-expulsados(X).



