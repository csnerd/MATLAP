img= imread('CompressedColourImage3.jpg');

imtool(img);


Ir = img(:,:,1);
Ig = img(:,:,2);
Ib = img(:,:,3);

Y = (0.299*Ir ) +(0.587*Ig)+(0.114*Ib);

newspace = rgb2ycbcr(img);


subplot(2,2, 1),imshow(Y);



subplot(2,2, 2),imshow(newspace);

imwrite(newspace,'newspace.jpg');

Yb = im2double(Y);


imwrite(Yb,"before.png",'png');

mdct = dctmtx(8)

subplot(2,2,3), imshow(mdct);

B = blkproc(Yb,[8 8],"P1*x*P2",mdct,mdct');


mask = [1 1 1 1 0 0 0 0
        1 1 1 0 0 0 0 0
        1 1 0 0 0 0 0 0
        1 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0
        0 0 0 0 0 0 0 0]

B2 = blkproc(B,[8 8],"P1.*x",mask);


result = blkproc(B2,[8 8],"P1*x*P2",mdct',mdct);

imwrite(result,"result.png",'png');

subplot(2,2,4),imshow(result);  