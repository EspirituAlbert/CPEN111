clc;
clf;
clear all;
close all;
pkg load image;

nature_image=imread('nature.jpg');
whos nature;
imwrite(nature_image,'nature.png');

grayscale_nature = rgb2gray(nature_image);
whos grayscale_nature;

img_red=nature_image;
img_red(:,:,2)=0;
img_red(:,:,3)=0;
imwrite(img_red,'nature_red.png');

img_green=nature_image;
img_green(:,:,1)=0;
img_green(:,:,3)=0;
imwrite(img_green,'nature_green.png');

img_blue=nature_image;
img_blue(:,:,1)=0;
img_blue(:,:,2)=0;
imwrite(img_blue,'nature_blue.png');

subplot(2,2,1),imshow(nature_image),title('Original Image');  % Display original image.
subplot(2,2,2),imshow(img_red),title('Red Image');  % Display red image.
subplot(2,2,3),imshow(img_green),title('Green Image');  %Display green image.
subplot(2,2,4),imshow(img_blue),title('Blue Image');  %Display blue image.
