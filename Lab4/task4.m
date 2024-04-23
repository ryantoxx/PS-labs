# 4.1
% Generate a geometer figure-image and display its Fourrier spectrum

image = imread('imgs/rural_house.jpg');
cut_img = image(1+[1:256],1+[1:256],:);
white_and_black = rgb2gray(cut_img);

a = zeros(256,256);
a(78:178,78:178) = 1;
af = fftshift(fft2(a));
figure(1);
subplot(1, 2, 1);
imshow(a);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');
subplot(1, 2, 2);
imshow(af);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');

# 4.2
% Perform "salt and pepper" noise to images and display the Fourrier spectrum

c_sp = imnoise(white_and_black, 'salt & pepper');
imshow(c_sp);
cf = fftshift(fft2(c_sp));
figure(2);
imshow(cf)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Fourier Spectrum of White Image');

# 4.3
% Perform frequency filtering

cf1 = cf.*a;
figure(3);
subplot(1, 2, 1);
imshow(cf1/255);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Frequency Filtering');

# 4.4
% Perform the reverse Fourrier transformation of the cropped image spectrum

subplot(1, 2, 2);
cf2 = ifft2(cf1);
imshow(cf2/155)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Reverse Fourrier transformation');



