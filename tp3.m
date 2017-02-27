n=(0: 10);
h=[ones(1,5)/5 zeros(1,6)];
stem(n,h);
[H, W]=freqz(h,1, 512, 'whole'); 
figure(1)
plot(W, abs(H), '.-'); grid
figure(2)
plot(fftshift(W-2*pi*(W>=pi)), abs(fftshift(H)), '.-'); grid
figure(3)
plot(W/pi, angle(H), '.-');grid