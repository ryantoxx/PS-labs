% 3.1
figure(1);

A=0.75;
w=50;
Ts=0.01;
T=100;
t=0:Ts:T;
x=A*rectpuls(t,w);
stem(t,x);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform of the rectangular impulse');
xlabel('Time (s)', 'FontSize', 35);
ylabel('f(x)', 'FontSize', 35);

%3.2
figure(2);

df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
fft(y = fft(x));
stem(f, abs(y));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform of the rectangular impulse');
xlabel('Time (s)', 'FontSize', 35);
ylabel('f(x)', 'FontSize', 35);

% NOTE 4
figure(3);

% Case w = 5
w = 5;
x=A*rectpuls(t,w);
df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
fft(y = fft(x));

subplot(2, 1, 1);
stem(f, abs(y));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform of the rectangular impulse');
xlabel('Time (s)', 'FontSize', 35);
ylabel('f(x)', 'FontSize', 35);

% Case w = 0.5;
w = 0.5;
x=A*rectpuls(t,w);
df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
fft(y = fft(x));

subplot(2, 1, 2);
stem(f, abs(y));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform of the rectangular impulse');
xlabel('Time (s)', 'FontSize', 35);
ylabel('f(x)', 'FontSize', 35);

% 3.3 - 3.4
figure(4);

A=0.75;
w=50;
Ts=0.01;
T=100;
t=0:Ts:T;
x=A*rectpuls(t,w);

df = 1/T;
Fmax = 1/Ts;
f = 0:df:Fmax;
fft(y = fft(x));
yp=fftshift(y);
f1=-Fmax/2:df:Fmax/2;

subplot(2, 1 , 1);
plot(f1, abs(yp));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
xlim([-pi, pi]);
title('Centered Magnitude Spectrum');
xlabel('Frequency (Hz)', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);


yp = fftshift(y);
f1 = -Fmax/2:df:Fmax/2;
subplot(2,1,2);
plot(f1, real(yp), f1, imag(yp));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');#
xlim([-pi, pi]);
xlabel('Frequency (Hz)', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);
title('Real and Imaginary Parts of Spectrum');
legend('Real Part', 'Imaginary Part');


