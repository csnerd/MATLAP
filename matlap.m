cam = webcam(1);
for idx = 1:100
   % Acquire a single image.
   rgbImage = snapshot(cam);

   % Convert RGB to grayscale.
   grayImage = rgb2gray(rgbImage);
% 
   % Find circles.
%    [centers, radii] = imfindcircles(grayImage, [60 80]);

   % Display the image.
   imshow(grayImage);
%    //hold on;
%    viscircles(centers, radii);
%    drawnow
end
clear cam;