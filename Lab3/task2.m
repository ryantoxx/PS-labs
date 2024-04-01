% 2.1

figure(1);
t = (0:1/99:1);
x = sin(2*pi*15*t) + sin(2*pi*40*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);
subplot(2, 1, 1);
plot(f,m);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Magnitude Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85]);

subplot(2, 1, 2);
plot(f,p*180/pi);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Phase Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Phase', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85])


% NOTE 3

% === Case 1 ===
figure(2);
t = (0:1/99:1);
x = sin(2*pi*50*t) + sin(2*pi*20*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);

subplot(2, 1, 1);
plot(f,m);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Magnitude Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85]);

subplot(2, 1, 2);
plot(f,p*180/pi);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Phase Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Phase', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85])

% === Case 2 ===
figure(3);

t = (0:1/99:1);
x = sin(2*pi*10*t) + sin(2*pi*1200*t);
y = fft(x);
m = abs(y);
p = unwrap(angle(y));
f = (0:length(y)-1)*99/length(y);

subplot(2, 1, 1);
plot(f,m);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Magnitude Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Magnitude', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85]);

subplot(2, 1, 2);
plot(f,p*180/pi);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 44);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Fourier Transform Phase Spectrum');
xlabel('Frequency Vector', 'FontSize', 35);
ylabel('Phase', 'FontSize', 35);
set(gca,'XTick',[15 40 60 85])
