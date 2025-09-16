function [blendA, blendB] = exercicio2(NG)

% NG: numero do grupo

% nao alterar: inicio
es = 1;
imax = 20;
pkg load optim
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

% digite seu codigo aqui

% 1. Defina a função objetivo (vetor de custos)
%    O custo de Blend B depende do NG passado como argumento.
c = [10; 2*NG];

% 2. Defina as restrições de desigualdade (A*x <= b)
%    As restrições de "maior ou igual" (>=) foram multiplicadas por -1.
A = [-0.30, -0.20;
     -0.20, -0.25;
     -0.25, -0.30];

b = [-15;
     -10;
     -12];

% 3. Defina os limites (bounds) das variáveis
%    lb = lower bounds (limite inferior, neste caso, não-negatividade)
%    ub = upper bounds (limite superior, quantidades máximas)
lb = [0; 0];
ub = [20; 50];

% 4. Resolva o problema usando linprog
%    O output 'x' conterá as quantidades ótimas de cada blend
[x, fval] = linprog(c, A, b, [], [], lb, ub);


% mantenha essas duas linhas finais
blendA = x(1);
blendB = x(2);

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
