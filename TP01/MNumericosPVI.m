function y = MNumericosPVI(f, a, b, n, y0)
%   MNumericosPVI - Aplica todos métodos
%
%   f - função do tipo f(t, y) representando o PVI
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
    
   
    yEuler = NEuler(f, a, b, n, y0);

    yRK2 = NRK2(f, a, b, n, y0);

    yRK4 = NRK4(f, a, b, n, y0);
    
    yODE45 = ODE45(f, a, b, n, y0);
   
    yNEuler_melhorado = NEuler_melhorado(f, a, b, n, y0);

    yNODE23 = NODE23(f, a, b, n, y0);
    
    y.Euler = yEuler;
    y.RK2 = yRK2;
    y.RK4 = yRK4;
    y.ODE45 = yODE45;
    y.NEuler_melhorado = yNEuler_melhorado;
    y.NODE23 = yNODE23;
end