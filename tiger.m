%%
% 
%   for x = 1:10
%       disp(x)
%   end
% 
%%
% 
% $$e^{\pi i} + 1 = 0$$
% 



a = imread('01.jpg');

imshow(a)
%  imhist(a)


I=rgb2gray(a);
b = imadjust(I);

imtool(b)

subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(b);

