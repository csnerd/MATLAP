I = imread('CompressedColourImage3.jpg');
 I = double(I(:,:,3));     % note the conversion to double (diff from im2double)
 T = dctmtx(8);            % T is of double data type, so that is y I must be double too
 m = 8;                    % block size
 n = 8;
 B_temp = {};
 numCols    = size(I,2);   % use these rather than access size repeatedly
 numRows    = size(I,1);
 NColBlocks = 0;
 for col = 1:n:numCols
    NColBlocks = NColBlocks + 1;
    NRowBlocks = 0;
    % determine where in I we will be extracting the column data
    % colStrt will be the starting column (and will always be valid)
    colStrt = col;                  
    % colStop will be the end or stopping column and is either n greater than
    % colStart (less one) or is the last column in the image (to avoid indexing
    % errors)
    colStop = min(col+n-1,numCols);
    for row = 1:m:numRows
        NRowBlocks = NRowBlocks + 1;
        % create an empty block of zeros
        blk        = zeros(m,n);
        % determine where in I we will be extracting the row data
        % rowStrt will be the starting row (and will always be valid)
        rowStrt = row;
        % rowStop will be the end or stopping row and is either m greater than
        % rowStart (less one) or is the last row in the image (to avoid indexing
        % errors)
        rowStop = min(row+m-1,numRows);        
        % extract the block or as much of it as we can
        blk(1:rowStop-rowStrt+1,1:colStop-colStrt+1) = ...
            I(rowStrt:rowStop,colStrt:colStop);
        % do the transformation on the 8x8 block and save it to the cell array
        B_temp{NRowBlocks, NColBlocks} = T*blk*T';
    end
 end