%Carlos David Escobar
%Serie De Fourier Trigonometrica
%Analisis de Se?ales y Sistemas

%Algo que encontre particular, es que cuando se
%pone un numero de aproximaciones impar, la grafica
%sale con una deformacion, mientras que cuando se pone 
%con un par, sale correctamente.
%
%%


clear
clc
syms t
%format rat %Valores en formato racional
f = input('Ingrese la funcion X(t)= ');
T = input('Ingrese Periodo: ');
T1 = -T;
k = input('Ingrese Cantidad de Aproximaciones: ');
w0 = (2*pi)/T;
a0 = (1/T)*int(f, t, [-T, T])
a = k/2;
sum1 = 0;
for k=-a:-1; %Negativo
    disp('Coeficiente #')
    disp(k)
    bk = (1/T)*int(((f*sin(k*w0*t))),t, [-T, T]);
    Bk = (eval(bk))
    sum1 = sum1+(Bk*sin(k*w0*t))
end

for k=1:a; %Positivo
    disp('Coeficiente #')
    disp(k)
    ak = (1/T)*int(((f*cos(k*w0*t))), t,[-T, T]);
    Ak = (eval(ak))
    sum1 = sum1+(Ak*cos(k*w0*t));
end

sum1 = a0 +sum1;
p1 = ezplot(sum1, [-T*2, T*2]);
hold on


