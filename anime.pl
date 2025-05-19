%Kuroko 10
ani(kurokoTetsuya) :-
  anime(kuroko_no_basuke),
  cabelo(azul),
  personalidade(calma),
  genero(masculino).

ani(kagamiTaiga) :-
  anime(kuroko_no_basuke),
  cabelo(vermelho),
  personalidade(agressiva),
  genero(masculino).

ani(aomineDaiki) :-
  anime(kuroko_no_basuke),
  cabelo(azul),
  personalidade(agressiva),
  genero(masculino).

ani(akashiSeijuro) :-
  anime(kuroko_no_basuke),
  cabelo(rosa),
  personalidade(fria),
  genero(masculino).

ani(midorimaShintaro) :-
  anime(kuroko_no_basuke),
  cabelo(verde),
  personalidade(seria),
  genero(masculino).

ani(kiseRyota) :-
  anime(kuroko_no_basuke),
  cabelo(loiro),
  personalidade(divertida),
  genero(masculino).

ani(momoiSatsuki):-
  anime(kuroko_no_basuke),
  cabelo(rosa),
  personalidade(calculista),
  genero(feminino).

ani(teipeiKiyoshi):-
  anime(kuroko_no_basuke),
  cabelo(castanho),
  personalidade(determinada),
  genero(masculino).

ani(hyuugaJunpei):-
  anime(kuroko_no_basuke),
  cabelo(preto),
  personalidade(lider),
  genero(masculino).

ani(murasakibaraAtsushi):-
  anime(kuroko_no_basuke),
  cabelo(roxo),
  personalidade(preguicosa),
  genero(masculino).

%haikyuu 11
ani(hinataShouyou):-
  anime(haikyuu),
  cabelo(laranja),
  personalidade(alegre),
  genero(masculino).

ani(kageyamaTobio):-
  anime(haikyuu),
  cabelo(preto),
  personalidade(arrogante),
  genero(masculino).

ani(oikawaTooru):-
  anime(haikyuu),
  cabelo(castanho),
  personalidade(maldosa),
  genero(masculino).

ani(nishinoyaYuu):-
  anime(haikyuu),
  cabelo(loiro),
  personalidade(impulsiva),
  genero(masculino).

ani(kozumeKenma):-
  anime(haikyuu),
  cabelo(loiro),
  personalidade(quieta),
  genero(masculino).

ani(tsukishimaKei):-
  anime(haikyuu),
  cabelo(loiro),
  personalidade(fria),
  genero(masculino).

ani(sugawaraKoushi):-
  anime(haikyuu),
  cabelo(cinzento),
  personalidade(gentil),
  genero(masculino).

ani(tanakaRyunosuke):-
  anime(haikyuu),
  cabelo(preto),
  personalidade(agressiva),
  genero(masculino).

ani(asahiAzumane):-
  anime(haikyuu),
  cabelo(castanho),
  personalidade(calma),
  genero(masculino).

ani(daichiSawamura):-
  anime(haikyuu),
  cabelo(castanho),
  personalidade(lider),
  genero(masculino).

ani(kiyokoShimizu):-
  anime(haikyuu),
  cabelo(preto),
  personalidade(seria),
  genero(feminino).

%assassination classroom 8
ani(koroSensei):-
  anime(assassination_classroom),
  cabelo(amarelo),
  personalidade(divertida),
  genero(masculino).

ani(nagisaShiota):-
  anime(assassination_classroom),
  cabelo(azul),
  personalidade(calma),
  genero(masculino).

ani(karmaAkabane):-
  anime(assassination_classroom),
  cabelo(vermelho),
  personalidade(fria),
  genero(masculino).

ani(kaedeKayano):-
  anime(assassination_classroom),
  cabelo(verde),
  personalidade(gentil),
  genero(feminino).

ani(tadaomiKarasuma):-
  anime(assassination_classroom),
  cabelo(castanho),
  personalidade(seria),
  genero(masculino).

ani(irinaJelavić):-
  anime(assassination_classroom),
  cabelo(loiro),
  personalidade(maldosa),
  genero(feminino).

ani(asanoGakushuu):-
  anime(assassination_classroom),
  cabelo(laranja),
  personalidade(calculista),
  genero(masculino).

ani(nakamuraRio):-
  anime(assassination_classroom),
  cabelo(ploiro),
  personalidade(divertida),
  genero(feminino).

%Saiki K. 11
ani(kusuoSaiki):-
  anime(saiki_k),
  cabelo(rosa),
  personalidade(quieta),
  genero(masculino).

ani(shunKaidou):-
  anime(saiki_k),
  cabelo(branco),
  personalidade(divertida),
  genero(masculino).

ani(rikiNendou):-
  anime(saiki_k),
  cabelo(loiro),
  personalidade(preguicosa),
  genero(masculino).

ani(kokomiTeruhashi):-
  anime(saiki_k),
  cabelo(azul),
  personalidade(calculista),
  genero(feminino).

ani(arenKuboyasu):-
  anime(saiki_k),
  cabelo(roxo),
  personalidade(agressiva),
  genero(masculino).

ani(kineshiHairo):-
  anime(saiki_k),
  cabelo(vermelho),
  personalidade(impulsiva),
  genero(masculino).

ani(reitaToritsuka):-
  anime(saiki_k),
  cabelo(roxo),
  personalidade(preguicosa),
  genero(masculino).

ani(kuusukeSaiki):-
  anime(saiki_k),
  cabelo(loiro),
  personalidade(fria),
  genero(masculino).

ani(chisatoMera):-
  anime(saiki_k),
  cabelo(vermelho),
  personalidade(alegre),
  genero(feminino).

ani(chiyoYumehara):-
  anime(saiki_k),
  cabelo(castanho),
  personalidade(divertida),
  genero(feminino).

ani(metoriSaiko):-
  anime(saiki_k),
  cabelo(branco),
  personalidade(arrogante),
  genero(masculino).
  
%animes 
anime(kuroko_no_basuke) :-
  genre(desporto),
  temporadas(3).

anime(haikyuu):-
  genre(desporto),
  temporadas(4).

anime(assassination_classroom):-
  genre(comedia),
  temporadas(2).

anime(saiki_k):-
  genre(comedia),
  temporadas(4).
  
cabelo(X) :-
  questiona(cabelo, X, [azul, vermelho, verde, rosa, loiro, castanho, preto, laranja, roxo, cinzento, branco]).

personalidade(X) :-
  questiona(personalidade, X, [calma, agressiva, seria, divertida, calculista, maldosa, preguicosa, alegre, arrogante, impulsiva, quieta, fria, gentil, lider]).

genero(X) :-
  questiona(genero, X, [masculino, feminino]).

genre(X) :-
  questiona(genre, X, [desporto]).

temporadas(X) :-
  questiona(temporadas, X, [1, 2, 3, 4, 5, 6, 7, 8]).

objectivo(X) :- ani(X).
