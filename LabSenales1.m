%%
%   Laboratorio Analisis de Se?ales y Sistemas
%   Transformacion de Funciones
%   Carlos David Escobar - 20133615027
%
%%
%   Guia:
%   
%   Desplazamiento de Funcion:
%   Parametros de entrada: 
%   X = Funcion a Desplazar
%   m = Rango 
%   n0 = Cantidad a desplazar
%   Plot(Y,n)
%
%
%   Inversion de Funcion:
%   Parametros de Entrada:
%   X = Funcion a Invertir
%   n = Rango
%   Plot(Y,n)
%
%
%   Escalamiento de Funcion:
%   Parametros de Entrada:
%   X = Funcion a Escalar
%   m = Rango
%   a = Cantidad a Escalar
%   Plot(Y,t2)
%
%   Para Escribir Funcion a Trozos:
%   y(x)=0.*(x<-1)+(x+1).*((-1<x)&(x<=2))+2.*((2<x)&(x<=3))+0.*(x>=3);
%   y(x)=0.*(x<-3)+((exp(x)).*(-1<x)&(x<=2))+((2<x)&(x<=3))+0.*(x>=3);
%
%   Para Escribir Funcion Discreta:
%   y(x)=[0 0 1 -1 2 3 -2 1 1 -3 0]
%%


Case = input('Ingrese \n 1 para funcion a trozos \n 2 para funcion discreta \n 3 para convolucion \n ');

switch Case
    
    case 1
    x = input('Ingrese el Rango de Grafica (-5:0.1:5): ');
    y = input('Ingrese la Funcion a graficar, y(x)=');

    Trozos = input('Escriba \n 1 para Desplazar \n 2 para Invertir \n 3 para Escalar \n ');

    switch Trozos
        case 1
            n0 = input('Ingrese la cantidad a desplazar: ');
            [Y,n]=DesplazamientoFunc(y,x,n0);
            plot(x,y,':',n,Y,'LineWidth',2)
        case 2
            [Y,n]=InversionFunc(y,x);
            plot(x,y,':',n,Y,'LineWidth',2)
        case 3
            a = input('Ingrese la Cantidad a Escalar: ');
            [Y,t2]=EscalamientoFunc(y,x,a);
            plot(x,y,':',t2,Y,'LineWidth',2)
        otherwise
            disp('Ingrese un valor valido')
    end
    
    case 2
    x = input('Ingrese el Rango de Grafica (-5:5): ');
    y = input('Ingrese la Funcion a graficar, y(x)=');

    Discreta = input('Escriba \n 1 para Desplazar \n 2 para Invertir \n 3 para Escalar \n ');

    switch Discreta
        case 1
            n0 = input('Ingrese la cantidad a desplazar: ');
            [Y,n]=DesplazamientoFunc(y,x,n0);
            stem(n,Y,'r','LineWidth',2)
            hold on
            stem(x,y)
        case 2
            [Y,n]=InversionFunc(y,x);
            stem(x,y,'LineWidth',2)
            hold on
            stem(n,Y,'r','LineWidth',2)
        case 3
            a = input('Ingrese la Cantidad a Escalar: ');
            [Y,t2]=EscalamientoFunc(y,x,a);
            stem(t2,Y,'r','LineWidth',2)
            hold one
            stem(x,y)
        otherwise
            disp('Ingrese un valor valido')
    end
    
    case 3
        u = input('Ingrese x(t): ')
        v = input('Ingrese h(t): ')
        [U,V]=ConvolucionFunc(u,v)
        plot(U,V)
end





