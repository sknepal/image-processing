% high pass filter %
clear all;
img = imread('Picture1.png');
img = rgb2gray(img);
w = [-1 -1 -1; -1 8 -1; -1 -1 -1] / 9; % high pass filter's mask
[row col] = size(img);
for i=2:1:row-1
    for j=2:1:col-1 
        new_image(i,j) = w(1) * img(i-1, j-1) + w(2) * img(i-1,j) + ...
            w(3) * img(i-1, j+1) + w(4) * img(i, j-1) + w(5) * img(i,j) + ...
            w(6) * img(i, j+1) + w(7) * img(i+1, j-1) + w(8) * img(i+1, j) ...
            + w(9) * img(i+1, j+1); % apply the mask
    end
end
subplot(1,2,1),imshow(img);
subplot(1,2,2),imshow(new_image);