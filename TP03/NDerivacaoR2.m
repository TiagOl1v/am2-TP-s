% Fórmula das diferenças regressivas em 2 pontos
% f′(xk) = f(xk)−f(xk−1) / h
%
% INPUT:  f - função
%         [a, b] - intervalo de derivação
%         h - passo da discretização
%         y - imagens x vs y
% OUTPUT: [x, y] - malha de pontos
%         dydx - derivada de f 
%
%
%   28/05/2024  Tiago Oliveira  a2022137225@isec.pt
%   28/05/2024  Pedro Sherring  a2020126540@isec.pt
%
function [x, y, dydx] = NDerivacaoR2(f, a, b, h, y)
x = a: h: b;
n = length(x);

if nargin == 4
    y = f(x);
end

dydx = zeros(1, n);

for i = n:-1:2
    dydx(i) = (y(i) - y(i - 1)) / h;
end

dydx(1) = (y(2) - y(1)) / h;

end

