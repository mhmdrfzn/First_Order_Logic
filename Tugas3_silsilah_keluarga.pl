orangTua(david, liza).
orangTua(david, john).
orangTua(amy, liza).
orangTua(amy, john).
orangTua(jack, ray).
orangTua(karen, ray).
orangTua(john, peter).
orangTua(john, mary).
orangTua(susan, peter).
orangTua(susan, mary).

laki_laki(david).
laki_laki(jack).
laki_laki(john).
laki_laki(ray).
laki_laki(peter).
perempuan(amy).
perempuan(karen).
perempuan(liza).
perempuan(susan).
perempuan(mary).

menikah(david, amy).
menikah(jack, karen).
menikah(john, susan).

ayah(X, Y) :- orangTua(X, Y), laki_laki(X).
ibu(X, Y) :- orangTua(X, Y), perempuan(X).

saudara_kandung(X, Y) :- orangTua(Z, X), orangTua(Z, Y), X \= Y.

eyang(X, Y) :- orangTua(X, Z), orangTua(Z, Y).
kakek(X, Y) :- eyang(X, Y), laki_laki(X).
nenek(X, Y) :- eyang(X, Y), perempuan(X).

paman(X, Y) :- saudara_kandung(X, Z), orangTua(Z, Y), laki_laki(X).
bibi(X, Y) :- saudara_kandung(X, Z), orangTua(Z, Y), perempuan(X).
