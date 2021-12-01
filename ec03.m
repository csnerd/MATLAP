img = imread('CompressedColourImage3.jpg');

size(img)

ir= img(:,:,1);

ig= img(:,:,2);

ib= img(:,:,3);


y = (0.299 * ir) + (0.587)



subplot(2,2,1), imshow(img);

subplot(2,2,2), imshow(ir);

subplot(2,2,3), imshow(ib);

subplot(2,2,4), imshow(ig);