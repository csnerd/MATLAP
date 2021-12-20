T = imread('tiger.jpg');
R = imread('tiger.jpg');
c = R(:,:,1);
c = im2double(c);
uv = R;
uv = im2uint16(uv);
% box = [0, 0, 500, 500];    
% outImage= insertObjectAnnotation(img,'rectangle',box,'','LineWidth',5,'Color',{'yellow'},'TextColor','black');
% figure, imshow(outImage), title('Image with rectangle');

B1 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
B2 = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
B1 = reshape(B1,[4,4]);
B2 = reshape(B2,[4,4]);
for Tr = 1:size(T,1)-4
    for Tc = 1:size(T,2)-4
        
        for tr = 1:4
            for tc = 1:4
                B1(tr,tc,1) = T(Tr+(tr-1),Tc+(tc-1),1);
            end
        end
        
        
        for Rr = 1:size(R,1)-4
            for Rc = 1:size(R,2)-4
                
                
                for rr = 1:4
                    for rc = 1:4
                        B2(rr,rc,1) = R(Rr+(rr-1),Rc+(rc-1),1);
                    end
                end
                cost = costFuncMAD(B1,B2,4);
                c(Rr,Rc,1) = cost;
            end
        end
        [x,y,v]=minCost(c);
        uv(Tc,Tr,1) = x;
        uv(Tc,Tr,2) = y;
        uv(Tc,Tr,3) = v;
        uv(Tc,Tr)
    end 
end