%{Problema 1 ficha 1}%

N = input('Enter an integer: ');
n = (0: N-1);
alpha = 0.95 * exp(1j*pi/3);
h = alpha .^ n;
plot(n' , [real(h)' imag(h)' abs(h)'] , '.-');grid
xlabel('n \rightarrow');
ylabel('Magnitude \rightarrow'); 
legend('Envolvente');
title('Exponencial Complexa');
figure(2);
subplot(4,1,1);
stem(n , real(h));grid
x=[zeros(1 , 20) ones(1 , 10) zeros(1 , max(N-30 , 0))];
x=x(1 : N);
subplot(4,1,2);
stem(n , x);grid
y=conv(real(h),x);
subplot(4,1,3);
%(version 1) stem((0:2*N-2) , y);grid
stem(n , y(1:N));grid
%alternative for convolution
subplot(4,1,4);
y1=filter(real(h),1,x);
stem(n , y1 , 'p');grid

%{length(real(h))=N / length(x)=N / length(convolution)=2N-1}%

%{sum(h.*conj(h))=h*h' para transpôr sem conjugar usar o comando transpose(h) <=> h.' }%

%sum(h.*h) <=> h*h.'
