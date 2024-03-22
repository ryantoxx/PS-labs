% Convolution of two sequences a and b
figure(1);
a = [-2  0  1  -1  3];
b = [1 2 0 -1];
c = conv(a,b);
d = 5;
m = 8;
k = 1:1:m;

% plot(n, a);
stem(k, c);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Convolution of two sequences', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

