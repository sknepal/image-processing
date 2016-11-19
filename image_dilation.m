% dilation and erosion %
clear all;
close all;
clc;
img = imread('338.jpeg');
img = rgb2gray(img);
%img = double(img); 
[row col] = size(img);

w = [1 1 1; 1 1 1; 1 1 1]; % structuring element

for i=2:row-1
    for j=2:col-1
         pixels = [w(1)*img(i-1, j-1)  w(2)*img(i-1,j)  ...
            w(3)*img(i-1, j+1) w(4)*img(i, j-1) w(5)*img(i,j)  ...
            w(6)*img(i, j+1) w(7)*img(i+1, j-1)  w(8)*img(i+1, j) ...
            w(9)*img(i+1, j+1)];
        dilation(i,j) = max(pixels); % dilation
        erosion(i,j)  = min(pixels); % erosion
    end
end

figure(1)
imshow(img);
figure(2)
imshow(dilation)
figure(3)
imshow(erosion)