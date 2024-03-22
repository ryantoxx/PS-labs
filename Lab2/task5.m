% Initial Convolution

figure(1);
a = [-2  0  1  -1  3];
b = [1 2 0 -1];
d = 5;
m = 8;
k = 1:1:m;
m = 8;
c = conv(a,b);
AE = fft(a, m);
BE = fft(b, m);
p = AE.*BE;
y1 = ifft(p);
error = c - y1;
d = 5;
m = 8;
k = 1:1:m;
m = 8;

subplot(3, 1, 1);
% plot(n, a);
stem(k, c);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Convolution of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

subplot(3, 1, 2);
% plot(n, a);
stem(k, y1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Inverse Fourier Transform', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

subplot(3, 1, 3);
% plot(n, a);
stem(k, error);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Error of initial convolution and fourier transform', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
