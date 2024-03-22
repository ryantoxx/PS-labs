% Generate two finite sequences a(n) and b(n)

a=[-2  0  1  -1  3];
b=[1 2 0 -1];
d=5;
n=1:1:d;
c=4;
l=1:1:c;

figure(1);
subplot(2,1,1);
% plot(n, a);
stem(n,a);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Sequence A', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

subplot(2,1,2);
% plot(1, b);
stem(l,b);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Sequence B', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

