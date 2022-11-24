clc;
clf;
clear all;
close all;
pkg load image;

parrots_image=imread('parrots.jpg');
whos parrots_image;
grayscale_parrots_image=rgb2gray(parrots_image); %Convert the original image to gray-scale image
subplot(121),imshow(parrots_image),title('Original Image'); %Display original image
subplot(122),imshow(grayscale_parrots_image),title('Gray-scale Image');  %Display gray-scale image

