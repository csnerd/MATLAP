ImFolder=uigetdir;
pngFile = dir(strcat(ImFolder,'\*.png'));
S = [pngFile(:).datenum];
[~,S] = sort(S);
pngFiles = pngFile(S);
VideoFile=strcat(ImFolder,'\Video');
writeObj = VideoWriter(VideoFile);
fps= 15;
writeObj.FrameRate = fps;
open(writeObj);
for t= 1:length(pngFiles)
Frame=imread(strcat(ImFolder,'\',pngFiles(t).name));
writeVideo(writeObj,im2frame(Frame));
end
close(writerObj);
















