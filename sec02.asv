I = imread("CompressedColourImage3.jpg");

iresult  = I;




Y = (0.299 * I(:,:,1))+(0.587 * I(:,:,2))+(0.114* I(:,:,3));


Cb = -(0.169 * I(:,:,1))-(0.311 * I(:,:,2))+(0.500* I(:,:,3));


Cr = (0.500 * I(:,:,1))-(0.419 * I(:,:,2))-(0.081* I(:,:,3));

iresult(:,:,1) = Y;
iresult(:,:,2) = Cb;
iresult(:,:,3) = Cr;

T = dctmtx(8);


subplot(2,2,1),imshow(T);
%dct = @(block_struct) T * block_struct.data * T';
Y = im2double(Y);
imwrite(Y,"y2.png",'png');
B = blkproc(Y,[8 8],'P1*x*P2',T,T');
subplot(2,2,2),imshow(B);
mask = [1   1   1   1   0   0   0   0
        1   1   1   0   0   0   0   0
        1   1   0   0   0   0   0   0
        1   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0
        0   0   0   0   0   0   0   0];
B2 = blkproc(B,[8 8],'P1.*x',mask);
I2 = blkproc(B2,[8 8],'P1*x*P2',T',T);
subplot(2,2,3),imshow(B2);
subplot(2,2,4),imshow(I2);
imwrite(I2,"f.png",'png');
% ycbcr = rgb2ycbcr(I);

% Ir = img(:,:,1);
% Ig = img(:,:,2);
% Ib = img(:,:,3);

% subplot(2,2,1) , imshow(I); 
% subplot(2,2,2) , imshow(Y);
% subplot(2,2,3) , imshow(ycbcr(:,:,1));
% subplot(2,2,4) , imshow(iresult); 