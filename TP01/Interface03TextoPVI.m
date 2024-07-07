% Interface (vers�o03) para os PVI
% Aplica��o dos M�todos Num�ricos de Euler e de Runge-Kutta
% Autor: Arm�nio Correia  | armenioc@isec.pt
% Data : 12/03/2020
%Alteracoes feitas por:
%   26/04/2024  Tiago Oliveira  a2022137225@isec.pt
%   26/04/2024  Pedro Sherring  a2020126540@isec.pt
%   26/04/2024  Pedro Martins   a2021118351@isec.pt

clear
primeiraVez=1;
opcao=1;
while opcao ~= 6 
    clc
    disp('------- M�TODOS NUM�RICOS PARA PVI ------')
    disp(' ')
    if(~primeiraVez)
        fprintf('1. INTRODUZIR PAR�METROS DO PVI\n')     
        fprintf('2. M�TODO DE EULER\n')         
        fprintf('3. M�TODO DE RK2\n')
        fprintf('4. M�TODO DE RK4\n')
        fprintf('5. M�TODO DE ODE45\n')
        fprintf('6. M�TODO DE Euler Melhorado\n')
        fprintf('7. M�TODO DE NODE23\n')
        fprintf('8. APLICAR OS 6 M�TODOS EM SIMULT�NEO\n')
        fprintf('9. TERMINAR\n\n')
        opcao=input('Op��o: ');
    else
        opcao=1;
        primeiraVez=0;
    end
    
    y=[];
    switch opcao
        case 1
              strF=input('\n f(t,y) = ','s');
              f=@(t,y) eval(vectorize(strF));
              a=str2num(input('a = ','s'));
              b=str2num(input('b = ','s'));
              n=str2num(input('n = ','s'));
              y0=str2num(input('y0 = ','s'));
        case 2 
              y=NEuler(f,a,b,n,y0);                        
        case 3  
              y=NRK2(f,a,b,n,y0);                
        case 4
              y=NRK4(f,a,b,n,y0);  
        case 5  
              y=ODE45(f,a,b,n,y0);                
        case 6
              y=NEuler_melhorado(f,a,b,n,y0); 
        case 7
              y=NODE23(f,a,b,n,y0); 
        case 8
              y=MNumericosPVI(f,a,b,n,y0);
        case 9
             break;
        
    end
    
    if ~isempty(y)
        disp(' ')
        disp('------ AS APROXIMA��ES OBTIDAS S�O: ------')
        disp(' ')
        disp(y)
    end
    if opcao~=9
       tecla =input('\nPrima uma tecla para continuar ...');
    end
end   
