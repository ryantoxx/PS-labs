% 1.1 Generate a discrete signal

figure(1);
N=64;
T=1/128;
k=0:N-1;
f=sin(2*pi*20*k*T);

plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% 1.2 Fourier Transform
figure(2);
F = fft(f);

plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% NOTE 1
figure(3);
f=sin(2*pi*108*k*T);

subplot(2, 1, 1);
plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

F = fft(f);
subplot(2, 1, 2);
plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% NOTE 2
% LOW F
% === CASE 1 ===
figure(4);
N=64;
T=1/128;
k=0:N-1;
f=sin(2*pi*15*k*T);

subplot(2, 1, 1);
plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

F = fft(f);

subplot(2, 1, 2);
plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% === CASE 2 ===
figure(5);
N=64;
T=1/128;
k=0:N-1;
f=sin(2*pi*45*k*T);

subplot(2, 1, 1);
plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

F = fft(f);

subplot(2, 1, 2);
plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% HIGH F
% === CASE 1 ===
figure(6);
N=64;
T=1/128;
k=0:N-1;
f=sin(2*pi*75*k*T);

subplot(2, 1, 1);
plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

F = fft(f);

subplot(2, 1, 2);
plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% === CASE 2 ===
figure(7);
N=64;
T=1/128;
k=0:N-1;
f=sin(2*pi*95*k*T);

subplot(2, 1, 1);
plot(k,f)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Orignal Singal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

F = fft(f);

subplot(2, 1, 2);
plot(k,abs(F))
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

% 1.3

figure(8);
N=64;
T=1/128;
k=0:N-1;
hertz=k*(1/(N*T))
f=sin(2*pi*20*k*T);
F = fft(f);
magF=abs(F);
plot(hertz(1:N/2), magF(1:N/2));

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('Hz', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

%1.4

figure(9);
N=64;
T=1/128;
k=0:N-1;
hertz=k*(1/(N*T))
f=sin(2*pi*19*k*T);
F = fft(f);
magF=abs(F);

subplot(2, 1, 1);
plot(hertz(1:N/2), magF(1:N/2));
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('Hz', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);

subplot(2, 1, 2);
plot(k, magF);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Signal', 'FontSize', 42);
xlabel('K index', 'FontSize', 35);
ylabel('Y(t)', 'FontSize', 35);
