function [t,y] = NEuler_melhorado(f,a,b,n,y0)
%MEULER Método de Euler para resolução numérica de EDO/PVI
%
%INPUT:
%   f - função da EDO y'=f(t,y)
%   [a,b] - intervalo de valores da variável independente t
%   n - núnmero de subintervalos ou iterações do método
%   y0 - aproximação inicial y(a)=y0
%OUTPUT:
%   t - vetor do intervalo [a,b] discretizado 
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/04/2024  Tiago Oliveira  a2022137225@isec.pt
%   26/04/2024  Pedro Sherring  a2020126540@isec.pt
%   26/04/2024  Pedro Martins   a2021118351@isec.pt
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
y(1)=y0;

    for i=1:n

         y(i+1) = y(i)+(h/2)*(f(t(i),y(i))+ f(t(i+1),y(i+1)));

    end

end
