inputdir = uigetdir;
pngFiles = dir(strcat(inputdir,'\*.png'));
pngFiles.name

outVideo = VideoWriter('video.avi');
outVideo.FrameRate = 1;
open(outVideo);

for i=1:length(pngFiles) 
    frame = imread(strcat(pngFiles(i).folder,'\',pngFiles(i).name));
    
    writeVideo(outVideo, frame);
end

close(outVideo);