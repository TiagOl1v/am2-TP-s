function [t,u,v] = NEulerSED(f,g,a,b,n,u0,v0)  
%NEulerSED   Método Númerico para resolver um Sistema se SED/PVI: Método de Euler
%   y = NEulerSED(f,g,a,b,n,u0,v0) Método numérico para a resolução de um PVI
%
% INPUT:
%   f, g - funções do 2.º membro das Equações Diferenciais
%   [a, b] - intervalo da variável t
%   n - número de iterações do método
%   u0, v0 - condições iniciais t=a -> u=u0 e v=v0
%
%OUTPUT: 
%   t - vector do X, dos passos de "a" a "b"
%   u - vector das soluções apróximadas dos deslocamentos
%   v - vector das soluções aproximadas das velocidades
%
%   05/03/2024  Arménio Correia  armenioc@isec.pt
%   14/03/2024  Arménio Correia
%   15/05/2024  Tiago Oliveira  a2022137225@isec.pt
%   15/05/2024  Pedro Sherring  a2020126540@isec.pt
%

h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i=1:n
    u(i+1) = u(i)+h*f(t(i),u(i),v(i));
    v(i+1) = v(i)+h*g(t(i),u(i),v(i));    
end

end