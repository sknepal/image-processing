% median filter %
clear all;
img = imread('noise.png');
img = rgb2gray(img);
%img = double(img);
[row col] = size(img);
for i=2:1:row-1
    for j=2:1:col-1  
        % convert the 3x3 mask to a 1x9 row vector
        mask = [img(i-1, j-1) img(i-1,j) img(i-1, j+1) img(i, j-1) ...
            img(i,j) img(i, j+1) img(i+1, j-1) img(i+1, j) img(i+1, j+1)];
        % sort the mask
        sorted_mask = sort(mask);
        % the 5th element will hold the median value
        median = sorted_mask(5);
        % put it on the new image
        new_image(i, j) = median;
    end
end
figure(1)
imshow(uint8(img));
figure(2)
imshow(uint8(new_image));
        