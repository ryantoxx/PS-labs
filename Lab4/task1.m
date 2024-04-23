# 1.1
% Show an image at your choice

image = imread('imgs/rural_house.jpg');
cut_img = image(1+[1:256],1+[1:256],:);
figure(1);
subplot(1, 2, 1);
imshow(image);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Original Image');
subplot(1, 2, 2);
imshow(cut_img);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Cut Image');

# 1.2
% Perform the addition of 128 to each pixel value in the image

# add_pixels = imadd(cut_img, 128)
add_pixels = cut_img + 128;
figure(2);
subplot(2, 2, 1);
imshow(add_pixels);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Image with Added 128');


# 1.3
% Perform the subtraction of 128 from each pixel value in the image

# subtract_image = imsubtract(cut_img, 128)
subtract_image = cut_img - 128;
subplot(2, 2, 2);
imshow(subtract_image);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Image with Substracted 128');

# 1.4
% Perform the division by 2 of each pixel value in the image

# divided_image = imdivide(cc,2);
divided_image = cut_img / 2;
subplot(2, 2, 3);
imshow(divided_image);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Divided Image');

# 1.5
% Perform the multiplication by 2 of each pixel value in the image

# multiplication_image = immultiply(cc,2);
multiplication_image = cut_img * 2;
subplot(2, 2, 4);
imshow(multiplication_image);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Multiplied Image');

# 1.6
% Perform the multiplication by 0.5 and addition of 128 to each pixel value in the image

# complex_image = imadd(immultiply(cc,0.5),128);
complex_image = cut_img * 0.5 + 128;
figure(3);
imshow(complex_image);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
title('Complex Image');













