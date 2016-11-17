% image histogram %
clear all;
close all;
img = imread('Picture1.png');
[row col] = size(img);
hist = zeros(1,300); % bins. 
for i=1:1:row
    for j=1:1:col
        curr = img(i,j);
        if (curr == 0)
            curr = 1;  % since the index in matlab begins from 1. just a check in place.
        end
        hist(curr) = hist(curr) + 1; % increment the count of encountered gray level by one.
    end
end
bar(hist); % plot a histogram

