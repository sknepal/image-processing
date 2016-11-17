% negative image %
clear all
close all
I = imread('Picture1.png');
G = rgb2gray(I);
[m, n] = size(G);
%point method
%for p=1:m
 %   for q=1:n
  %      Inv(p,q)= 255 - G(p,q);
   % end
%end
%vector method
Inv = 255 - G;
subplot(1,2,1),imshow(G);
subplot(1,2,2),imshow(Inv);
