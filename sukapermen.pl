anakIbu(andi).
anakIbu(budi).
anakIbu(tsani).
anakIbu(cika).
anakIbu(dani).
not(anakIbu(emil)).

sukaPermen(andi).
sukaPermen(budi).
sukaPermen(tsani).
not(sukaPermen(cika)).
not(sukaPermen(dani)).

siapa_saja(X) :- anakIbu(X).
dapat_permen(X) :- anakIbu(X), sukaPermen(X).
dapat_uang(X) :- anakIbu(X), not(sukaPermen(X)).
tidak_dapat_apa_apa(X) :- not(anakIbu(X)).
