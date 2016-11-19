% gradient %
clear all
close all
clc
img = imread('LennaRGB.png');
img = rgb2gray(img);
img = double(img);
[row col] = size(img);
w1 = [1 0; -1 0];
w2 = [1 -1; 0 0];
for i=2:1:row-1
    for j=2:1:col-1
        x_grad_img(i,j) = w1(1) * img(i, j) + w1(2) * img(i,j+1) + ...
                     w1(3) * img(i+1, j) + w1(4) * img(i+1, j+1); % x gradient mask
        y_grad_img(i,j) = w2(1) * img(i, j) + w2(2) * img(i,j+1) + ...
                       w2(3) * img(i+1, j) + w2(4) * img(i+1, j+1); % y gradient mask
    end
end


figure(1)
imshow(uint8(x_grad_img)) % x gradient

figure(2)
imshow(uint8(y_grad_img)) % y gradient

final_image = x_grad_img + y_grad_img;
figure(3)
imshow(uint8(final_image)) % combined
         