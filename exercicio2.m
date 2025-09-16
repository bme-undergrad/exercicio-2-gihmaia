function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

#função otimização:
f=[10,4]';

#chutes iniciais:
x=[1,1]';

#restrições de desigualdade Ax<=b
A=[-0.3,-0.2;
  -0.2,-0.25;
  -0.25,-0.3;
  1,0;
  0,1];
b=[-15;-10;-12;20;50];

#nao tem restrições de igualdade

x_min_valores=zeros(2,1);
x_max_valores=1000*ones(2,1);
x=linprog(f,A,b)

blendA = x(1);
blendB = x(2);

endfunction
