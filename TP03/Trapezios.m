% Regra dos Trapézios
% IT(f)=h2[f(x0)+2f(x1)+⋯+2f(xn−1)+f(xn)]
% |ET|≤b−a12h2M2,M2=max , x∈[a,b]|f′′(x)|
%
%INPUT:
%   f - função real de variável real x
%   [a, b] - extremos do intervalo da variável independente x
%   n - número de subintervalos ou iterações da regra
%OUTPUT: 
%   t - Resultado da área do Integral
%
%   28/05/2024  Tiago Oliveira  a2022137225@isec.pt
%   28/05/2024  Pedro Sherring  a2020126540@isec.pt
%

function T = Trapezios(f,a,b,n)

h = (b-a)/n;
s = 0;
x=a;

for i=1:n-1
    x=x+h;
    s = s+f(x);
end

T = h/2 * ( f(a) + 2*s + f(b) );

end