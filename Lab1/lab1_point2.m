% <<< POINT 2 >>>
% 2.1 Generate an unaffected signal
figure(1);
R = 50;
m = 0:1:R-1;
s = 2*m.*(0.9.^m) ;

% stem(m,s);
plot(m,s);

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original Signal', 'FontSize', 42);
xlabel('Tine index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

% 2.2 Add noise
figure(2);
R = 50;
m = 0:1:R-1;
d = randn(1, length(m)) - 0.5;

% stem(m, s_with_noise);
plot(m, d);

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Noise Signal', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

% 2.3 Combine both graphs
figure(3);
plot(m, s, 'b', 'LineWidth', 1.5);
hold on;
plot(m, d, 'r', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original Signal and Noisy Signal', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'FontSize', 20);

% 2.4 Sum of the two signals
figure(4);
x = s + d;

plot(m, s, 'b', 'LineWidth', 1.5);
hold on;
plot(m, x, 'r', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original Signal and Sum of Signals', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Sum of Signals', 'FontSize', 20);

% 2.5 Design a Moving Average Filter (MAF) and filter the noisy signal
M = 3;
b = ones(M, 1) / M;
y = filter(b, 1, x);

figure(5);
plot(m, s, 'b', 'LineWidth', 1.5);
hold on;
plot(m, x, 'r', 'LineWidth', 1.5);
plot(m, y, 'g', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals, M=3', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);

% 2.6 MAF for M=5 and M=10
figure(6);
M2 = 5;
b2 = ones(M2, 1) / M2;
y2 = filter(b2, 1, x);

M3 = 10;
b3 = ones(M3, 1) / M3;
y3 = filter(b3, 1, x);

subplot(2, 1, 1);  % 2 rows, 1 column, first subplot
plot(m, s, 'b', 'LineWidth', 1.5);
hold on;
plot(m, x, 'r', 'LineWidth', 1.5);
plot(m, y2, 'g', 'LineWidth', 1.5);
hold off;
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals, M = 5', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);

subplot(2, 1, 2);  % 2 rows, 1 column, second subplot
plot(m, s, 'b', 'LineWidth', 1.5);
hold on;
plot(m, x, 'r', 'LineWidth', 1.5);
plot(m, y3, 'g', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals, M = 10', 'FontSize', 42);
xlabel('Time index (n)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);

% 2.7 Sawtooth signal

figure(7);
R1 = 1;
M4 = 20;
m1 = 0:0.001:R1;
s1 = 2 * sawtooth(3*pi*m1 + pi/6);

% generate noise
d1 = randn(1, length(m1)) - 0.5;
x1 = s1 + d1;  % noisy signal

% MAF
b4 = ones(M4, 1) / M4;
y1 = filter(b4, 1, x1);  % filtered signal

plot(m1, s1, 'b', 'LineWidth', 1.5);
hold on;
plot(m1, x1, 'r:', 'LineWidth', 1.5);
plot(m1, y1, 'k', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals,M = 20', 'FontSize', 42);
xlabel('Time index (m)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);

% 2.8 Repeat step 2.7 for different filter lengths M=50 and M=100
figure(8);
R1 = 1;
M5 = 50;
m1 = 0:0.001:R1;
s1 = 2 * sawtooth(3*pi*m1 + pi/6);

% generate noise
d1 = randn(1, length(m1)) - 0.5;
x1 = s1 + d1;  % noisy signal

% MAF
b4 = ones(M4, 1) / M4;
y1 = filter(b4, 1, x1);  % filtered signal

plot(m1, s1, 'b', 'LineWidth', 1.5);
hold on;
plot(m1, x1, 'r:', 'LineWidth', 1.5);
plot(m1, y1, 'k', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals,M = 50', 'FontSize', 42);
xlabel('Time index (m)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);



figure(9);
R1 = 1;
M5 = 100;
m1 = 0:0.001:R1;
s1 = 2 * sawtooth(3*pi*m1 + pi/6);

% generate noise
d1 = randn(1, length(m1)) - 0.5;
x1 = s1 + d1;  % noisy signal

% MAF
b4 = ones(M4, 1) / M4;
y1 = filter(b4, 1, x1);  % filtered signal

plot(m1, s1, 'b', 'LineWidth', 1.5);
hold on;
plot(m1, x1, 'r:', 'LineWidth', 1.5);
plot(m1, y1, 'k', 'LineWidth', 1.5);
hold off;

set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Original, Noisy, and Filtered Signals,M = 100', 'FontSize', 42);
xlabel('Time index (m)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);
legend('Original Signal', 'Noisy Signal', 'Filtered Signal', 'FontSize', 20);
