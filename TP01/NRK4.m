function [t,y] = NRK4(f,a,b,n,y0)
%NRK4  Método Númerico para resolver um PVI: Runge-Kutta de ordem 4
%   [t,y] = NRK4(f,a,b,n,y0) Método numérico para a resolução de um PVI
%
%   f - Função da equação diferencial ordinaria, em t e y
%   a - Limite esquerdo do intervalo
%   b - Limite direito do intervalo
%   n - Numero de sub-intervalos
%   y0 - valor da aproximação inicial do PVI
%
%   t - vetor do intervalo [a,b] discretizado 
%   y - vetor das soluções aproximadas do PVI em cada um dos t(i)
%
%   26/04/2024  Tiago Oliveira  a2022137225@isec.pt
%   26/04/2024  Pedro Sherring  a2020126540@isec.pt
%   26/04/2024  Pedro Martins   a2021118351@isec.pt


h = (b-a)/n;
t = a:h:b;
y = zeros(1,n+1);
y(1) = y0;

    for i =1:n

        k1 = h*f(t(i),y(i));
        k2 = h*f(t(i)+(h/2),y(i)+k1/2);
        k3 = h*f(t(i)+(h/2),y(i)+k2/2);
        k4 = h*f(t(i+1),y(i)+k3);
        y(i+1) = y(i)+(k1+2*k2+2*k3+k4)/6;

    end
    
end


