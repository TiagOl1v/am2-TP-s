% Fórmula das diferenças progressivas em 2 pontos
% f′(xk) = f(xk+1)−f(xk) / h
%
% INPUT:  f - função
%         [a, b] - intervalo de derivação
%         h - passo da discretização
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%   28/05/2024  Tiago Oliveira  a2022137225@isec.pt
%   28/05/2024  Pedro Sherring  a2020126540@isec.pt
%

function [x, y, dydx] = NDerivacaoP2(f, a, b, h, y)
x = a: h: b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1, n);

for i = 1: (n - 1)
    dydx(i) = (y(i + 1) - y(i)) / h;
end

dydx(n) = (y(n) - y(n - 1)) / h;
end

