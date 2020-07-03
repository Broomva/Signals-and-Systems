
N = input('Numero de Puntos: ')
x = linspace(-1,1,N);
f = sign(x);
sum = 0.*x;
M = input('Cantidad de Aproximaciones: ')
for j = 1:2:M
    sum = sum + 4/pi*sin(j*pi*x)/j;
end
plot(x, sum, 'r')
hold on
plot(x,f,'LineWidth',2)
hold on
error = abs(sum-f)
Plot(x, error)