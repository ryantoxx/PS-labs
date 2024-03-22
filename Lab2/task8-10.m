% Signals
a = [1 4 2];
b = [1 2 3 4 5 4 3 3 2 2 1 1];

% Length of convolution block
m_block = 14;
k = 1:1:m_block;

% Dividing the signal into blocks
b1 = b(1:6);
b2 = b(7:end);

% First block convolution
c1 = conv(a, b1);
#c1 = c1(1:m_block);

% Second block convolution
c2 = conv(a, b2);
#c2 = c2(1:m_block);

% Results
disp('Convolutia blocului 1:');
disp(c1);

disp('Convolutia blocului 2:');
disp(c2);

c_add=[c1(1:6) c1(7:8)+c2(1:2) c2(3:end)];

figure(1);
stem(k, c_add);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 24);
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
title('Final convolution', 'FontSize', 42);
xlabel('Time (s)', 'FontSize', 35);
ylabel('Amplitude', 'FontSize', 35);

