% Repeat task 1-4 for bigger signals

% 6.1

n = 0:1:8192;
l = 1:1:8192;
% n = 0:1:16384;
% l = 1:1:16384;


a = 2 * square(20 * pi * n / length(n) + 1);
b = 3 * sawtooth(12 * pi * l / length(l) + pi/8);

figure(1);
subplot(2,1,1);
plot(n, a);
% stem(n,a);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Square function', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);


subplot(2,1,2);
plot(l, b);
% stem(l,b);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Sawtooth function', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);



% 6.2
disp(">> Basic convolution");
tic;
c = conv(a, b);
%m = 32768;
m = 16384;
k = 1:1:m;
toc;

figure(2);
plot(k, c);
% stem(k, c);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Convolution of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);


% 6.3
disp(">> FFT convolution");
tic;
AE = fft(a, m);
BE = fft(b, m);
p = AE.*BE;
y1 = ifft(p);
toc;

figure(3);
plot(k, y1);
% stem(k, y1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Inverse Fourier Transform of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

