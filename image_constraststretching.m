% contrast stretching %
clear all;
close all;
clc
img = imread('Picture1.png');
img = rgb2gray(img);
img = double(img);
[row col] = size(img);
r_min = min(min(img));
c = 255/(max(max(img)) - min(min(img)));
s_min = 0; % lowest value
for i=1:1:row
    for j=1:1:col
        new_img(i, j) = c * (img(i,j) - r_min) + s_min;
    end
end

hist1 = zeros(1,300); % bins. 
hist2 = zeros(1,300);
for i=1:1:row
    for j=1:1:col
        curr = uint8(new_img(i,j));
        curr2 = uint8(img(i, j));
        if (curr == 0)
            curr = 1;  % since the index in matlab begins from 1. just a check in place.
        end
        if (curr2 == 0)
            curr2 = 1;
        end
        hist2(curr) = hist2(curr) + 1; % increment the count of encountered gray level by one.
        hist1(curr2) = hist1(curr2) + 1;
    end
end
subplot(1,2,1),bar(hist1); % plot a histogram
subplot(1,2,2),bar(hist2);


