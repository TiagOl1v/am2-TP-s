function [t,y] = ODE45 (f,a,b,n,y0) 
%       Função ODE45 em MATLAB
%   [t,y] = ODE45 (f,a,b,n,y0) Método numérico para a resolução de um PVI
%
%INPUT:
%   f - Função da equação diferencial ordinaria, em t e y
%   a - Limite esquerdo do intervalo
%   b - Limite direito do intervalo
%   n - Numero de sub-intervalos
%   y0 - valor da aproximação inicial do PVI
%
%OUTPUT:
%   t - vetor do intervalo [a,b] discretizado 
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/04/2024  Tiago Oliveira  a2022137225@isec.pt
%   26/04/2024  Pedro Sherring  a2020126540@isec.pt
%   26/04/2024  Pedro Martins   a2021118351@isec.pt

    h = (b-a)/n;
    t = a:h:b;
    [~,y] = ode45(f,t,y0);
    if size(y, 1) ~= length(t)
        y = y';
    end
end


