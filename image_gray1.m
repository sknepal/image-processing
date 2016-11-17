% gray level slicing without background %
clear all
close all
orig = imread('Picture1.png');
img = rgb2gray(orig);
[row col] = size(img);
for i=1:1:row
    for j=1:1:col
        if((img(i,j)>50))&&(img(i,j)<140) % increase the gray level for a specific range of pixels
            img(i,j)=255;                 % make everything else disappear.
        else
            img(i,j)=0;
        end
    end
end
subplot(1,2,1),imshow(orig);
subplot(1,2,2),imshow(img);