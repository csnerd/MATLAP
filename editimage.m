img= imread('CompressedColourImage3.jpg');

Ir = img(:,:,1);
Ig = img(:,:,2);
Ib = img(:,:,3);

subplot(2,2,1) , imshow(img);
subplot(2,2,2) , imshow(Ir);
subplot(2,2,3) , imshow(Ig); 
subplot(2,2,4) , imshow(Ib); 
% % %imtool(img)
% % 
% size(img)
% imgr = img;
% imgg = img;
% imgb = img;
% for i = 1:size(img,1)
%     for j = 1:size(img,2)
%         %if mod (i,2) == 0 && mod(j,2) == 0
%             imgr(i,j,1)= 0;
%             imgg(i,j,2)= 0;
%             imgb(i,j,3)= 0;
%         %end
%     end
% end
% 
% Ir = img(:,:,1);
% Ig = img(:,:,2);
% Ib = img(:,:,3);
% 
% subplot(2,2,1) , imshow(imgo); 
% subplot(2,2,2) , imshow(imgr);
% subplot(2,2,3) , imshow(imgb);
% subplot(2,2,4) , imshow(imgg); 