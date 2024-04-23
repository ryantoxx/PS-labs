# 2.1
% Display the image and histogram (coloured image)

image = imread('imgs/rural_house.jpg');
red = imhist(image(:,:,1));
green = imhist(image(:,:,2));
blue = imhist(image(:,:,3));
figure(1);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
plot(red, 'r');
hold on
plot(green, 'g');
plot(blue, 'b');
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
legend(' Red channel','Green channel','Blue channel');

# 2.2
% Perform histogram equalization and display the image and histogram of the selected image

I2 = imadjust(image,[.2 .3 0; .6 .7 1],[]);
red = imhist(I2(:,:,1));
green = imhist(I2(:,:,2));
blue = imhist(I2(:,:,3));
figure(2);
set(gca, 'FontName', 'Times New Roman', 'FontWeight', 'bold', 'FontSize', 30);
plot(red, 'r');
hold on
plot(green, 'g');
plot(blue, 'b');
set(gca, 'XGrid', 'on');
set(gca, 'YGrid', 'on');
legend(' Red channel','Green channel','Blue channel');

figure(3)
subplot(1, 2, 1);
imshow(image);
subplot(1, 2, 2);
imshow(I2);



