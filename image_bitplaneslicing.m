% bit plane slicing %

clear all;
close all;
clc
img = imread('Picture1.png');
img = rgb2gray(img);
[row col] = size(img);
bit = input('Enter the bitplane image to see: (1: MSB, 8: LSB) ');
for i=1:1:row
    for j=1:1:col
        binary_repr = dec2bin(img(i,j), 8); % convert the pixel value to binary representation
        curr = binary_repr(bit); % get the bit value existing at the user given bit position
        if curr == '1'           % if the bit value at that position is 1
            new_image(i, j) = 255; % then put 255 on the new image's pixels.
        else
            new_image(i,j) = 0; % otherwise, make it a 0.
        end
    end
end
imshow(new_image);