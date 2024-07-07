
%N_ODE23  ODE23 do Matlab.
%  [t,y] = Heun(f,a,b,n,y0) Método numérico para a resolução de um PVI
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
function [t,y]=NODE23(f,a,b,n,y0)
h=(b-a)/n;
t=a:h:b;
y=zeros(1,n+1);
sol=ode23(f,t,y0);

y=deval(sol,t);

end
