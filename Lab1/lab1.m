% <<< POINT 1 >>>
% 1.1 White Noise Ts = 0.01
figure(1)
Ts = 0.01;
t = 0:Ts:5;
x1 = randn(1, length(t));
plot(t , x1, 'LineWidth', 1.5);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('White Noise after Gaussian Distribution, Ts = 0.01', 'FontSize', 42);
xlabel('Time(s)', 'FontSize', 35);
ylabel('y(t) function', 'FontSize', 35);

% 1.2 White Noise Histogram Ts = 0.01
figure(2)
Ts = 0.01;
t = 0:Ts:1;
x1 = randn(1, length(t));
hist(x1, 50);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('White Noise after Gaussian Distribution (Histogram), Ts = 0.01', 'FontSize', 42);
xlabel('Value', 'FontSize', 35);
ylabel('Frequency', 'FontSize', 35);

% 1.3 White Noise Ts = 0.001
figure(3)
Ts = 0.001;
t = 0:Ts:5;
x2 = randn(1, length(t));
plot(t , x2, 'LineWidth', 1.5);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('White Noise after Gaussian Distribution, Ts = 0.001', 'FontSize', 42);
xlabel('Time(s)', 'FontSize', 35);
ylabel('y(t) function', 'FontSize', 35);

% 1.4 White Noise Histogram Ts = 0.001
figure(4)
Ts = 0.001;
t = 0:Ts:1;
x1 = randn(1, length(t));
hist(x1, 50);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('White Noise after Gaussian Distribution (Histogram), Ts = 0.001', 'FontSize', 42);
xlabel('Value', 'FontSize', 35);
ylabel('Frequency', 'FontSize', 35);

% 1.5 Digital Filter
% Digital Filter
figure(5);
Ts = 0.01;
om0 = 2*pi;  % frequency of oscillations (1 Hz)
dz = 0.005;  % damping ratio

% filter coefficients
oms = om0 * Ts;
a = [1 + 2*dz*oms + oms^2, -2*(1 + dz*oms), 1];
b = [A*2*oms^2];

t = 0:Ts:50;
x1 = randn(1, length(t));
y1 = filter(b, a, x1);
plot(t, y1, 'LineWidth', 1.5);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Filtered White Noise Signal, Ts = 0.01', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

% 1.6 Digital Filter T = 0.001
figure(6);
Ts = 0.001;
om0 = 2*pi;
dz = 0.005;

% filter coefficients
oms = om0 * Ts;
a = [1 + 2*dz*oms + oms^2, -2*(1 + dz*oms), 1];
b = [A*2*oms^2];

t = 0:Ts:50;
x2 = randn(1, length(t));
y1 = filter(b, a, x2);
plot(t, y1, 'LineWidth', 1.5);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Filtered White Noise Signal, Ts = 0.001', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);


