function [frame] = readbin(name,width,hight)

fileID = fopen(name,'r');
% data=fread(fileID);

imageWidth = width;
imageHeight = hight;
numColor = 1;

newData = zeros(imageHeight,imageWidth);
newData = im2double(newData);

l=1;
count = 1;
[v] = fscanf(fileID,'%f');

for i = 1:imageHeight  %for i 0 to maxColumn
    for j = 1:imageWidth %for j 0 to maxRow
        for k = 1:numColor
        
            newData(i,j,1)=v(count);
            count  =count+1 ;
%             newData(l+(k-1)*(imageWidth*imageHeight)) = data(imageWidth*(j-1)*numColor+(i-1)*numColor+k);  %newData[k] = imageData[maxColumn*j+i]
        end
        l=l+1;
    end
end

fclose(fileID);
frame = newData;
end

