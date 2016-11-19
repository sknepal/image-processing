% Log transformation %
clear all;
close all;
im = imread('LennaRGB.png');
im = rgb2gray(im);
img = double(im); % converting to double in order to raise to gamma's power
[row col] = size(img);

img = img / max(max(img)); % normalize the pixels by dividing by the maximum value

for i=1:row
    for j=1:col
       new_img(i, j) = log(1 + img(i,j)); % formula for power law: pixel raised to gamma value.
    end
end

new_img = floor(new_img * 255); % since the value is currently between [0 1], multiplying by 255
                                % gets it to the range [0 255]
figure(1)
imshow(im);
figure(2)
imshow(uint8(new_img)) 
