function [t,u,v] = NRK4SED(f,g,a,b,n,u0,v0)
% NRK4SED  Método Númerico para resolver um SED: Runge-Kutta de ordem 4
%   [t,u,v] = NRK4SED(f,g,a,b,n,u0,v0)
%   Su'= f(t,u,v), v'=g(t,u,v), t=[a, b], u(a)=u0 e v(a)=v0
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
for i = 1 : n
    k1u = h*f(t(i),u(i),v(i));
    k1v = h*g(t(i),u(i),v(i));
    
    k2u = h*f(t(i)+h/2,u(i)+0.5*k1u,v(i)+0.5*k1v);
    k2v = h*g(t(i)+h/2,u(i)+0.5*k1u,v(i)+0.5*k1v);
    
    k3u = h*f(t(i)+h/2,u(i)+0.5*k2u,v(i)+0.5*k2v);
    k3v = h*g(t(i)+h/2,u(i)+0.5*k2u,v(i)+0.5*k2v);
    
    k4u = h*f(t(i)+h,u(i)+k3u,v(i)+k3v);
    k4v = h*g(t(i)+h,u(i)+k3u,v(i)+k3v);
    
    u(i+1) = u(i)+(k1u+2*k2u+2*k3u+k4u)/6;
    v(i+1) = v(i)+(k1v+2*k2v+2*k3v+k4v)/6;
end

end