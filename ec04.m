a = imread('CompressedColourImage3.jpg') ;
subplot(2,3,1), imshow(a);

ir = a(:,:,1);
ig = a(:,:,2);
ib = a(:,:,3);


Y = (0.299 * ir)+(0.587*ig)+(0.114*ib);

subplot(2,3,2),imshow(Y);


newspace= rgb2ycbcr(a);
subplot(2,3,3),imshow(newspace);

YY = newspace(:,:,1);
cb = newspace(:,:,2);
cr = newspace(:,:,3);

subplot(2,3,4),imshow(YY);
subplot(2,3,5),imshow(cb);
subplot(2,3,6),imshow(cr);

