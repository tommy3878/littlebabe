function [ croppedImage ] = AutoCrop( img )
    %UNTITLED3 Summary of this function goes here
    
    % Get all rows and columns where the image is nonzero
    % [nonZeroRows nonZeroColumns] = find(img);
    % Reference: https://www.mathworks.com/matlabcentral/answers/55253-how-to-crop-an-image-automatically
    
    imgSize = containers.Map('KeyType','char','ValueType','double');
    
    imgSize('col') = 0;
    imgSize('row') = 0;
    tRow = 0;
    bRow = 0;
    lCol = 0;
    rCol = 0;
    
    while rSum == 0
        tRow = tRow + 1;
        rSum = sum(img(tRow,1:end,:));
    end
    
    while rSum == 0
        tRow = tRow + 1;
        rSum = sum(img(tRow,1:end,:));
    end
    
    while cSum == 0 
        imgSize('col') = imgSize('col') + 1;
        cSum = sum(img(1:end,imgSize('col'),:));
    end
    
    % Get the cropping parameters
    topRow = min(nonZeroRows(:));
    bottomRow = max(nonZeroRows(:));
    leftColumn = min(nonZeroColumns(:));
    rightColumn = max(nonZeroColumns(:));
    
    % Extract a cropped image from the original.
    croppedImage = img(topRow:bottomRow, leftColumn:rightColumn, :);
    
end
