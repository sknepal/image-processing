%low pass filter%
clear all;
img = imread('noise.png');
img = rgb2gray(img);
img = double(img); % multiplication ==> requires the image to be converted to double.
w = [1 1 1; 1 1 1; 1 1 1] / 9; % average filter mask
[row col] = size(img);
for i=2:1:row-1
    for j=2:1:col-1         % applying the mask
        new_image(i,j) = w(1) * img(i-1, j-1) + w(2) * img(i-1,j) + ...
            w(3) * img(i-1, j+1) + w(4) * img(i, j-1) + w(5) * img(i,j) + ...
            w(6) * img(i, j+1) + w(7) * img(i+1, j-1) + w(8) * img(i+1, j) ...
            + w(9) * img(i+1, j+1);
    end
end
subplot(1,2,1),imshow(uint8(img)); % convert the image back to integer.
subplot(1,2,2),imshow(uint8(new_image));