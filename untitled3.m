img=imread("rgb.png");

img2=rgb2ycbcr(img);

subplot(2,2,1),imshow(img2);
subplot(2,2,2),imshow(img);

img3= img2(:,:,1);

imwrite(img3,"intensity.png",'png');

t= dctmtx(16);
imgdouble=im2double(img3);

b = blkproc(imgdouble,[16 16], "P1*x*P2", t, t');
 subplot(2,2,3),imshow(b);

mask = [
    1 1 1 1 1 1 1 1 0 0 0 0 0 0 0 0
    1 1 1 1 1 1 1 0 0 0 0 0 0 0 0 0
    1 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0
    1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0
    1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0
    1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0
    1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
b2 = blkproc(b , [16 16] , "P1.*x" , mask);



result=blkproc(b2,[16 16],"P1*x*P2",t',t); 

subplot(2,2,4),imshow(result);

imwrite(result,"result2.png","png");