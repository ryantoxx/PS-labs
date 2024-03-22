% Fourier Transform of a(n) and b(n) sequence

figure(1);
a = [-2  0  1  -1  3];
b = [1 2 0 -1];
AE = fft(a, m);
BE = fft(b, m);
p = AE.*BE;
m = 8;
k = 1:1:m;

% plot(n, a);
stem(k, p);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
