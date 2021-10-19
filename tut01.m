a =  imread('tigersmall2.png');
imshow(a);

a = rgb2gray(a);

imgadj = imadjust(a)

imshow(imgadj,);

% 
% img= a;
% 
% 
% for  i= 1:size(a,1)
%     for j = 1:size(a,2)
%        z= (img(i,j,1));
%         img(i,j,1)=z;
%         img(i,j,2)=z;
%         img(i,j,3)=z;
%     end
% end
% imshow(img);

%gray = rgb2gray(a);

%imshow(gray)

%imwrite(gray,"gray.png",'png');


%subplot(1,2,1),imshow(a);
%subplot(1,2,2), imshow(gray)
