function [t,u,v] = NEuler_melhoradoSED(f,g,a,b,n,u0,v0)  
%NEuler_melhoradoSED Método de Euler para um Sistema de SED/PVI
%   [t,u,v] =NEuler_melhoradoSED(f,g,a,b,n,u0,v0) Método numérico para a
%   resolução de um SED (ordem 2)
%   u'= f(t,u,v), v'=g(t,u,v), t=[a, b], u(a)=u0 e v(a)=v0
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
%   15/05/2024  Tiago Oliveira  a2022137225@isec.pt
%   15/05/2024  Pedro Sherring  a2020126540@isec.pt
%

h = (b-a)/n;
t = a:h:b;
u = zeros(1,n+1);
v = zeros(1,n+1);
u(1) = u0;
v(1) = v0;
for i = 1:n
    u(i+1) = u(i)+h*f(t(i),u(i),v(i));
    v(i+1) = v(i)+h*g(t(i),u(i),v(i));    
    u(i+1) = u(i)+(h/2)*(f(t(i),u(i),v(i))+f(t(i+1),u(i+1),v(i+1)));
    v(i+1) = v(i)+(h/2)*(g(t(i),u(i),v(i))+g(t(i+1),u(i+1),v(i+1)));   
end
end
