% gray level slicing with background %
clear all
close all
orig = imread('Picture1.png');
img = rgb2gray(orig);
[row col] = size(img);
for i=1:1:row
    for j=1:1:col
        if((img(i,j)>50))&&(img(i,j)<150) % increase the gray level for a specific range of pixels.
            img(i,j)=255;
        else
            img(i,j)=orig(i,j);           % leave every other pixels just the way they are.
        end
    end
end
subplot(1,2,1),imshow(orig);
subplot(1,2,2),imshow(img);