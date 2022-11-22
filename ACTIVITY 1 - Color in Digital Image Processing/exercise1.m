close all;
clear all;
clc

pkg load image;

Orig_Img = imread('fruits.png');  % Read the image information
subplot(131);
imshow(Orig_Img);
title('Original Image')


Orig_Img1 = imresize(imresize(Orig_Img,1/15),15);
subplot(132);
imshow(Orig_Img1);
title('15x15 resolution');
imwrite(Orig_Img1,'fruits2.png');


chg_color = rgb2hsv(Orig_Img);    % Change the colore image to HSV
subplot(133)
imshow(chg_color);                % Display converted version (HSV)
title('RGB to HSV');
imwrite(chg_color,'fruits3.png');
