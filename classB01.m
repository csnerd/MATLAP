img = imread('rgb.png');
imshow(img);

imgred = img;
imggreen = img;
imgblue = img;
imggray = img;

for i = 1:size(img,1)

    for j = 1:size(img,2)
        imgred(i,j,1) = 0;
        imggreen(i,j,2) = 0;
        imgblue(i,j,3) = 0;
        avg = ((img(i, j, 1)+img(i, j , 2)+img(i, j , 3))/3);
        imggray(i, j, 1) = avg;
        imggray(i, j, 2) = avg;
        imggray(i, j, 3) = avg;
    end
end

subplot(2,2,1), imshow(img); 
subplot(2,2,2), imshow(imgred);
subplot(2,2,3), imshow(imggreen);
subplot(2,2,4), imshow(imggray);
