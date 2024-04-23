# 3.1
% Filter the image with a 3x3 filter

image = imread('imgs/rural_house.jpg');
white_and_black = rgb2gray(image);
% figure(1);
% imshow(white_and_black)

f1 = fspecial('average');
cfilter = filter2(f1, white_and_black);
figure(1);
subplot(1,2,1);
imshow(white_and_black);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');
subplot(1,2,2);
imshow(cfilter/255);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered 3x3 Black and White Image');

# 3.2
% Filter the image with a 5x7 filter

f1 = fspecial('average', [5,7]);
cfilter1 = filter2(f1, white_and_black);
figure(2);
subplot(1,2,1);
imshow(white_and_black);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');
subplot(1,2,2);
imshow(cfilter1/255);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered 5x7 Black and White Image');

# 3.3
% Filter the image with a 11x11 filter

f1 = fspecial('average', 11);
cfilter2 = filter2(f1, white_and_black);
figure(3);
subplot(1,2,1);
imshow(white_and_black);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');
subplot(1,2,2);
imshow(cfilter2/255);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered 5x7 Black and White Image');

# 3.4
% Perform image border detection with a Laplasian and Laplasian filter from Gaussian

f = fspecial('laplacian');
cfilter3 = filter2(f, white_and_black);
f1 = fspecial('log');
cfilter4 = filter2(f1,white_and_black);
figure(4);
subplot(1,2,1);
imshow(cfilter3/155);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered Laplasian Black and White Image');
subplot(1,2,2);
imshow(cfilter4/155);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered Laplasian from Gaussian Black and White Image');

# 3.5
% Add salt and pepper noise to the image

c_sp = imnoise(white_and_black ,'salt & pepper');
figure(5);
subplot(1, 2, 1);
imshow(white_and_black);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Black and White Image');
subplot(1, 2, 2);
imshow(c_sp);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('White and Black Image with Salt and Pepper Noise');

# 3.6
% Filter the image with 3x3 filter

a3 = fspecial('average');
a4 = fspecial('average', [5,7]);
c_sp_f3 = filter2(a3, c_sp);
c_sp_f4 = filter2(a4, c_sp);
figure(6);
subplot(1,2,1)
imshow(c_sp_f3/255)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered Image (3x3)');
subplot(1,2,2)
imshow(c_sp_f4/255)
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Filtered Image (5x7)');





