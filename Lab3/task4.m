% 4.1
figure(1);

Ts=0.01;
T=50;
t=0:Ts:T;
x1=rand(1,length(t));

plot(t,x1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('White Noise', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('y(t)', 'FontSize', 35);

% 4.2
figure(2);

a=0;
b=0;
om0=2*pi;
dz=0.05;
A=1;
oms=om0*Ts;
a(1)=1+2*dz*oms+oms^2;
a(2)=-2*(1+dz*oms);
a(3)=1;
b(1)=A*2*dz*oms^2;
y1=filter(b,a,x1);

plot(t,y1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Filter', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('y(t)', 'FontSize', 35);

% 4.3
figure(3);

df = 1 / T;
Fmax = 1 / Ts;
f = -Fmax / 2:df:Fmax / 2;
Fu1 = fft(x1);
Fu2 = fft(y1);
Fu1p = fftshift(Fu1);
Fu2p = fftshift(Fu2);
m = abs(Fu1p);
m1 = abs(Fu2p);

subplot(2, 1, 1);
plot(f, m, 'b');
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('TFD in', 'FontSize', 42);
xlabel('Frequency (Hz)', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);

subplot(2, 1, 2);
plot(f, m1, 'r');

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('TFD out', 'FontSize', 42);
xlabel('Frequency (Hz)', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);


