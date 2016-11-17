% power law transformation %
clear all;
close all;
im = imread('Picture1.png');
im = rgb2gray(im);
[row col] = size(im);
gamma_val = input('Enter gamma value: ');
img = double(im); % converting to double in order to raise to gamma's power

img = img / max(max(img)); % normalize the pixels by dividing by the maximum value

for i=1:row
    for j=1:col
       new_img(i, j) = img(i,j)^gamma_val; % formula for power law: pixel raised to gamma value.
    end
end

new_img = floor(new_img * 255); % since the value is currently between [0 1], multiplying by 255
                                % gets it to the range [0 255]
imshow(uint8(new_img)) 

