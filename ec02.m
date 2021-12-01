v = VideoReader('Tiger.mp4');
outV = VideoWriter('.\\img\\video.avi');
outCV = VideoWriter('.\\com\\video.avi');
outV.FrameRate = 1;
outCV.FrameRate = 1;

open(outV);
open(outCV);

frames= read( v,[1 5]);

backgroud = imread('back.png');

for i = 1:5
    f= frames(:,:,:,i);
    for x = 1:size(f,1)
        for y = 1:size(f,2)
            if(f(x,y,1)<= 100 && f(x,y,2)>=150 && f(x,y,3) <=100)
                f(x,y,:) = backgroud(x,y,:);
            end
        end
    end
    imwrite(f,strcat('img\\img',int2str(i),'.png'),'png');
    writeVideo(outV,f)
    cframe = compress(f);
    imwrite(cframe,strcat('com\\img',int2str(i),'.png'),'png');
    writeVideo(outCV,cframe)
end


close(outV);
close(outCV);
% imtool(f);
