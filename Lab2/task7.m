% Repeat task 6 for even bigger signals

% Signals a and b

n = 0:1:262144;
l = 1:1:262144;
% n = 0:1:131072;
% l = 1:1:131072;

a = 2 * sin(18 * pi/2 * n / length(n) + pi/3);
b = 3 * cos(20 * pi/4 * l / length(l) + pi);

figure(1);
subplot(2,1,1);
plot(n, a);
% stem(n,a);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('SIN ', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);


subplot(2,1,2);
plot(l, b);
% stem(l,b);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('COS', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);



% Convolution
disp(">> Basic convolution");
tic;
c = conv(a, b);
m = 524288;
k = 1:1:m;
toc;

figure(2);
subplot(2, 1, 1);
plot(k, c);
% stem(k, c);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Convolution of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);


% Fourier Transform Convolution
disp(">> FFT convolution");
tic;
AE = fft(a, m);
BE = fft(b, m);
p = AE.*BE;
y1 = ifft(p);
toc;

subplot(2, 1, 2);
plot(k, y1);
% stem(k, y1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Inverse Fourier Transform of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

