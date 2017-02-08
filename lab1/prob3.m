%{Problema 3 ficha 1}%

N = input('Enter an integer: ');
n = (0: N-1);
alpha = 0.5;
h = alpha .^ n;
plot(n' , [real(h)' abs(h)'] , '.-');grid
xlabel('n \rightarrow');
ylabel('Magnitude \rightarrow'); 
legend('Envolvente');
title('Exponencial Complexa');
figure(2);
subplot(5,1,1);
stem(n , real(h));grid
x=[zeros(1 , 20) ones(1 , 10) zeros(1 , max(N-30 , 0))];
x=x(1 : N);
subplot(5,1,2);
stem(n , x);grid
y=conv(real(h),x);
subplot(5,1,3);
%(version 1) stem((0:2*N-2) , y);grid
stem(n , y(1:N));grid
%alternative for convolution
subplot(5,1,4);
y1=filter(real(h),1,x);
stem(n , y1 , 'p');grid
subplot(5,1,5);
yy=[2-2.^-n(1:10) (2^10-1)*2.^(-n(11:end))];
max(abs(y(1:N)-yy))
stem(n , yy);grid