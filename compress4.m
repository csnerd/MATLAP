function cframe = compress4(iframe)

    c = iframe;
    imgycbcr = rgb2ycbcr(iframe);
    Y = imgycbcr(:,:,1);
    Cb = imgycbcr(:,:,2);
    Cr = imgycbcr(:,:,3);
%     imshow(imgycbcr);
    
    
    T = dctmtx(4);
    %dct = @(block_struct) T * block_struct.data * T';
    Y = im2double(Y);
    Cb = im2double(Cb);
    Cr = im2double(Cr);
    BY = blkproc(Y,[4 4],'P1*x*P2',T,T');
    BCb = blkproc(Cb,[4 4],'P1*x*P2',T,T');
    BCr = blkproc(Cr,[4 4],'P1*x*P2',T,T');
    mask = [1   1      0   0
            1      0   0   0
             0   0   0   0
            
              0   0   0   0];
    
    B2Y = blkproc(BY,[4 4],'P1.*x',mask);
    B2Cb = blkproc(BCb,[4 4],'P1.*x',mask);
    B2Cr = blkproc(BCr,[4 4],'P1.*x',mask);
    
    I2Y = blkproc(B2Y,[4 4],'P1*x*P2',T',T);
    I2Cb = blkproc(B2Cb,[4 4],'P1*x*P2',T',T);
    I2Cr = blkproc(B2Cr,[4 4],'P1*x*P2',T',T);

    imgycbcr(:,:,1) = im2uint8(I2Y);
    imgycbcr(:,:,2) = im2uint8(I2Cb);
    imgycbcr(:,:,3) = im2uint8(I2Cr);
    cframe = ycbcr2rgb(imgycbcr);
%     imtool(imgycbcr);
end