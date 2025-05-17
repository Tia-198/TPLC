%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% perito.pl
%%
%% Expert System Shell:
%%   Permite carregar a base de conhecimento desejada.
%%
%% 13/Maio/2025
%% Tiago Valério 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Predicado principal: perito/0
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

perito :-
  write('Concha simples de Sistema Pericial'), nl,
  write('Versao de 13/Maio/2025'), nl, nl,
  esperaOrdens(123).

esperaOrdens(MC) :-
  mostraComandos(MC),
  write('> '),
  read(Comando),
  executa(MC,Comando).

mostraComandos(123) :-
  write('Comandos disponiveis (introduza o numero `1.`, `2.` ou `3.`):'),
  nl,
  write('1 - Consultar uma Base de Conhecimento (BC)'), nl,
  write('2 - Solucionar'), nl,
  write('3 - Sair'), nl.
mostraComandos(23) :-
  write('Comandos disponiveis (introduza o numero 2 ou 3):'), nl,
  write('2 - Solucionar'), nl,
  write('3 - Sair'), nl.

:- dynamic executa/2.

executa(_,1) :-
  write('Nome da BC: '),
  read(F),
  consult(F),
  write('BC consultada com sucesso.'), nl, nl,
  continua.
executa(_,2) :-
  soluciona,
  esperaOrdens(23).
executa(_,3) :-
  nl,
  write('Volte Sempre!'), nl,
  write('Qualquer tecla para sair.'),
  get0(_),
  halt.
executa(MC,X) :-
  write(X),
  write(' nao e um comando valido!'), nl,
  esperaOrdens(MC).

continua :-
  retract( executa(_,1) :- _ ), % Ja carrega'mos uma BC.
  esperaOrdens(23). % De futuro ja nao temos essa opcao.

%%%%%%%%%%%%%%%
% soluciona/0
%%%%%%%%%%%%%%%

soluciona :-
  abolish(conhece,3),
  asserta(conhece(def,def,def)), % apenas para o predicado
  objectivo(X),                  % conhece/3 estar definido...
  nl, nl, write('Resposta encontrada: '),
  write(X),
  nl, nl.
soluciona :-
  nl, nl, write('Nao foi encontrada resposta :-('), nl.


%%%%%%%%%%%%%%%
% questiona/2
%%%%%%%%%%%%%%%

questiona(Atributo,Valor) :-
  conhece(sim,Atributo,Valor).
questiona(Atributo,Valor) :-
  conhece(_,Atributo,Valor), !, fail.
questiona(Atributo,Valor) :-
  write(Atributo:Valor),
  write('? (s/n) '),
  read(R),
  processa(R,Atributo,Valor).

processa(s,Atributo,Valor) :-
  asserta(conhece(s,Atributo,Valor)).
processa(R,Atributo,Valor) :-
  asserta(conhece(R,Atributo,Valor)),!,
  fail.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% questiona/3
%
% Recurso a Menus:
%   sao apresentados ao utilizador os valores
%   que cada atributo pode assumir.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

questiona(Atr,Val,_) :-
  conhece(s,Atr,Val).
questiona(Atr,_,_) :-
  conhece(s,Atr,_), !, fail.
questiona(Atr,Val,ListaOpcoes) :-
  write('Qual o valor para '),
  write(Atr),
  write('? '), nl,
  write(ListaOpcoes), nl,
  read(X),
  processa(X,Atr,Val,ListaOpcoes).

processa(Val,Atr,Val,_) :-
  asserta(conhece(s,Atr,Val)).
processa(X,Atr,_,ListaOpcoes) :-
  member(X,ListaOpcoes),
  asserta(conhece(s,Atr,X)), !, fail.
processa(X,Atr,Val,ListaOpcoes) :-
  write(X),
  write(' nao e valor aceite!'), nl,
  questiona(Atr,Val,ListaOpcoes).