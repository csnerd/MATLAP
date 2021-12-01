img= imread('CompressedColourImage3.jpg');

imtool(img);


Ir = img(:,:,1);
Ig = img(:,:,2);
Ib = img(:,:,3);

Y = (0.299*img(:,:,1)) +(0.587*img(:,:,2))+(0.114*img(:,:,3));
cs = rgb2ycbcr(img);
cs(:,:,1) = Y;
subplot(2,2,1) , imshow(img);
subplot(2,2,2) , imshow(Y);
subplot(2,2,3) , imshow(cs); 
subplot(2,2,4) , imshow(cs(:,:,1)); 
