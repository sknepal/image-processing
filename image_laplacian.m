% high pass filter %
clear all;
close all;
img = imread('LennaRGB.png');

img = rgb2gray(img);
img = double(img);
w = [0 1 0; 1 -4 1; 0 1 0]; % high pass filter's mask
%w = double(w);
[row col] = size(img);
for i=2:row-1
    for j=2:col-1 
        new_image(i,j) = w(1) * img(i-1, j-1) + w(2) * img(i-1,j) + ...
            w(3) * img(i-1, j+1) + w(4) * img(i, j-1) + w(5) * img(i,j) + ...
            w(6) * img(i, j+1) + w(7) * img(i+1, j-1) + w(8) * img(i+1, j) + ...
            w(9) * img(i+1, j+1); % apply the mask
    end
end
%subplot(1,2,1),imshow(uint8(img));

figure(1)
imshow(uint8(img));

figure(2);
imshow(uint8(new_image));


for i=2:row-1
    for j=2:col-1 
        nimg(i, j) = img(i, j);
    end
end
sharpened = nimg - new_image;
figure(3);
imshow(uint8(sharpened));

