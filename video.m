
inputDir=uigetdir;
inputDir;
pngFiles = dir(strcat(inputDir,'\*.png'));
pngFiles.folder

outvideo = VideoWriter('com\video2.avi');
outvideo.FrameRate = 1;
open(outvideo);
% 
for i = 1:length(pngFiles)
    
    frame = imread(strcat( pngFiles(i).folder,'\', pngFiles(i).name));
    writeVideo(outvideo,frame);
%     imshow(frame);
    
end


close(outvideo);
% pngFile = dir(strcat(ImFolder,'\*.png'));
% pngFile(:).name;
% pngFiles = pngFile(S);
% for  i = 0:length(pngFiles);
% end

% S = [pngFile(:).datenum]; [~,S] = sort(S);
% pngFiles = pngFile(S);
% pngFiles
% VideoFile=strcat(ImFolder,'\Video');
% writeObj = VideoWriter(VideoFile);
% fps= 1;
% writeObj.FrameRate = fps;
% open(writeObj);
% for t= 1:length(pngFiles)
% Frame=imread(strcat(ImFolder,'\',pngFiles(t).name));
% writeVideo(writeObj,im2frame(Frame));
% end
% close(writerObj);
















