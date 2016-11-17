% thresholding %
clear all
close all
orig = imread('Picture1.png');
img = rgb2gray(orig);
[row col] = size(img);
for i=1:1:row
    for j=1:1:col
        if (img(i,j) > 30 && img(i,j)<110) % if the pixel is between 30 & 110
            img(i,j) = 255;                % make it 1.
        else
            img(i,j) = 0;                  % otherwise make it 0.
        end
    end
end
subplot(1,2,1),imshow(orig);
subplot(1,2,2),imshow(img);