i = imread("01.jpg")


b = imcrop(i,[60 360 ,100,100])



s = imresize(i,0.5)



r = imrotate(i,75)



subplot(2,2,1) , imshow(i); 

subplot(2,2,2) ,imshow(s); 

subplot(2,2,3), imshow(r);

subplot(2,2,4), imshow(i) ;

imwrite(r,'rtarget.png','png');

